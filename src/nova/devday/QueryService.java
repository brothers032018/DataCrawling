package nova.devday;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.environment.Ivy;

public class QueryService {

	private static final String SERVER_HOST = "https://employer.vietnamworks.com";
	private static String keyword = Ivy.var().get("com_nova_devday_query_keyword");
	private static String industry = Ivy.var().get("com_nova_devday_query_industry");
	private static String lastModified = Ivy.var().get(
			"com_nova_devday_query_last_modified");
	private static String location = Ivy.var().get("com_nova_devday_query_location");
	private static String yearsOfExperience = Ivy.var().get(
			"com_nova_devday_query_years_of_experience");
	
	public static String buildQuery() {
		String query = StringUtils.EMPTY;
		query = SERVER_HOST
				+ "/v2/resume/search?searchResume%5Bkeyword%5D="
				+ keyword
				+ "&searchResume%5Bindustry%5D%5B%5D="
				+ industry
				+ "&searchResume%5BjobLevelId%5D=&searchResume%5Blocation%5D%5B%5D="
				+ location
				+ "&searchResume%5BlastModified%5D="
				+ lastModified
				+ "&searchResume%5BadvancedSearch%5D=1&btnResumeSearch=1&searchResume%5ByearExperience%5D="
				+ yearsOfExperience
				+ "&searchResume%5Bnationality%5D=&searchResume%5Blanguage%5D=&searchResume%5BlanguageLevel%5D=&searchResume%5BageFrom%5D=&searchResume%5BageTo%5D=&searchResume%5BsalaryFrom%5D=&searchResume%5BsalaryTo%5D=&searchResume%5BgenderId%5D=";
		return query;
	}
}
