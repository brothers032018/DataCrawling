package aavn.knowledge.sharing.service;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.Connection.Method;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;



import com.nova.devday.CandidateInfo;

import ch.ivyteam.ivy.environment.Ivy;
import aavn.knowledge.sharing.QueryService;
import aavn.knowledge.sharing.persistent.CrawlingPersistentService;

public class CrawlingService {
	
	private static final String SERVER_HOST = "https://employer.vietnamworks.com";
	private static final String PASSWORD_VALUE = Ivy.var().get("account_login_password");
	private static final String PASSWORD_KEY = "_password";
	private static final String USERNAME_VALUE = Ivy.var().get("account_login_email");
	private static final String USERNAME_KEY = "_username";
	private static final String LOGIN_FORM = SERVER_HOST + "/v2/login_check";
	private static final String LOGIN_LINK = SERVER_HOST + "/v2/login";
	
	static CrawlingPersistentService crawlingPersistentService = new CrawlingPersistentService();

	public static void crawlData() throws IOException, ParseException {
		 String queryUrl = QueryService.buildQuery();
		Connection.Response login = initEnvironment();
		// Craw information from page 1
		crawlDataFromUrl(login, queryUrl, 1);
		// Craw information from other pages
		/*Document pageContent = connectWebServer(login, QUERY_STRING);
		Elements paginationPanel = pageContent.select("div[class=pagination btn-group");
		Elements paginations = paginationPanel.select("button[data-url]");
		Integer pageNo = 1;
		for (Element pagination : paginations) {
			pageNo++;
			crawlDataFromUrl(login, SERVER_HOST + pagination.attr("data-url"), pageNo);
		}*/
	}

	private static Connection.Response initEnvironment() throws IOException {
		Connection.Response initial = Jsoup.connect(LOGIN_LINK).method(Connection.Method.GET).execute();
		return Jsoup.connect(LOGIN_FORM).data(USERNAME_KEY, USERNAME_VALUE)
				.data(PASSWORD_KEY, PASSWORD_VALUE)
				.cookies(initial.cookies())
				.method(Method.POST).execute();
	}

	private static void crawlDataFromUrl(Connection.Response login, String url, Integer pageNo) throws IOException, ParseException {
		Document pageContent = Jsoup.connect(url).cookies(login.cookies()).get();
		Elements employeeLinks = pageContent.select("a[href]");
		int candidateNo = 0;
		for (Element employeeLink : employeeLinks) {
			if (employeeLink.attr("href").contains("resume/detail")) {
				candidateNo++;
				CandidateInfo candidateInfo = new CandidateInfo();
				Document employeePage = connectWebServer(login, SERVER_HOST + employeeLink.attr("href"));
				updateConfigurationInfo(candidateInfo, login, employeePage, pageNo, candidateNo, employeeLink);
				crawlBasicCandidateInfo(candidateInfo, employeePage);
				Ivy.log().info(candidateInfo);
				crawlingPersistentService.saveOrUpdate(candidateInfo);
			}
		}
	}

	private static void updateConfigurationInfo(CandidateInfo candidateInfo, Connection.Response login, Document employeePage, Integer pageNo,
			int candidateNo, Element employeeLink) throws ParseException {
		candidateInfo.setCandidateId(getCandidateId(employeeLink));
		candidateInfo.setProfileLink(SERVER_HOST + employeeLink.attr("href"));
		candidateInfo.setPageNo(pageNo);
		candidateInfo.setCandidateNo(candidateNo);
		candidateInfo.setUpdatedDate(getUpdatedDate(employeePage));
		candidateInfo.setContactLink(getContactLink(employeePage));
		candidateInfo.setImageLink(getImageLink(employeePage));
	}

	private static String getImageLink(Document employeePage) {
		Elements imagePanel = employeePage.select("div[class=m-b-sm m-t-lg text-center");
		Elements imageImgTab = imagePanel.select("img");
		return imageImgTab.attr("src");
	}

	private static void crawlBasicCandidateInfo(CandidateInfo candidateInfo, Document employeePage) {
		Elements infoTable = employeePage.select("table[class=table m-b-xs m-t");
		int infoNo = 1;
		for (Element row : infoTable.select("tr")) {
            Elements infoRows = row.select("td");
            for (Element infoRow : infoRows) {
    			if(infoNo % 2 == 0 ){
    				updateCandidateInfoFromString(infoNo, candidateInfo, infoRow.text());
    			}
    			infoNo++;
    		}
        }
	}

	private static Document connectWebServer(Connection.Response login, String link) throws IOException {
		return Jsoup.connect(link).cookies(login.cookies()).get();
	}

	private static String getContactLink(Document employeePage) {
		Elements leadContactResumtBtn = employeePage.select("button[id=leadContactResumtBtn");
		String leadContactResumtLink = leadContactResumtBtn.attr("abs:data-url");
		return leadContactResumtLink;
	}

	private static String getCandidateId(Element employeeLink) {
		return employeeLink.attr("href").replace("/v2/resume/detail/", "");
	}

	private static Date getUpdatedDate(Document employeePage) throws ParseException {
		String updatedDateSpan = employeePage.select("span[class=m-l").text();
		String updatedDate = updatedDateSpan.replace(updatedDateSpan.substring(0, updatedDateSpan.length() - 10), "");
		DateFormat format = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
		Date date = format.parse(updatedDate);
		return date;
	}

	private static void updateCandidateInfoFromString(Integer infoNo, CandidateInfo candidateInfo, String info) {
		if(info==null||info.isEmpty() || info.contains("null")){
			info ="N/A";
		}
		switch (infoNo) {
		case 2:
			candidateInfo.setHighestEducation(info);
			break;
		case 4:
			candidateInfo.setYearsOfExperience(info);
			break;
		case 6:
			candidateInfo.setLanguages(info);
			break;
		case 8:
			candidateInfo.setMostRecentJob(info);
			break;
		case 10:
			candidateInfo.setLatestCompany(info);
			break;
		case 12:
			candidateInfo.setExperienceLevel(info);
			break;
		case 14:
			candidateInfo.setExpectedPosition(info);
			break;
		case 16:
			candidateInfo.setExpectedJobLevel(info);
			break;
		case 18:
			
			candidateInfo.setJobLocations(info);
			break;
		case 20:
			candidateInfo.setJobIndustriesFunctions(info);
			break;
		case 22:
			candidateInfo.setMinimumExpectedSalary(info);
			break;
		default:
			break;

		}
	}
	
}
