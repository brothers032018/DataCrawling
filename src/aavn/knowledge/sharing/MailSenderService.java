package aavn.knowledge.sharing;


import java.util.List;

import com.nova.devday.CandidateInfo;
import com.nova.devday.CrawlingEmail;

import aavn.knowledge.sharing.persistent.CrawlingPersistentService;


import ch.ivyteam.ivy.environment.Ivy;


public class MailSenderService {
	
	private String SENDER_MAIL = Ivy.var().get("aavn.knowledge.sharing_sender_email");
	private String RECEIVER_MAIL = Ivy.var().get("aavn.knowledge.sharing_receiver_email");
	private String EMAIL_SUBJECT = Ivy.cms().co("/aavn/crawlingEmailSubject");
	private String EMAIL_CONTENT_TEMPLATE = Ivy.cms().co("/aavn/emailContent");
	
	public CrawlingEmail buildEmailObject()
	{
		CrawlingEmail email = new CrawlingEmail();
		email.setSubject(EMAIL_SUBJECT);
		email.setFrom(SENDER_MAIL);
		email.setTo(RECEIVER_MAIL);
		email.setContent(buildMailContent());
		return email;
		
	}
	
	private String buildMailContent(){
		
		
		CrawlingPersistentService crawlingPersistentService = new CrawlingPersistentService();
		List<CandidateInfo> candidateInfos = crawlingPersistentService.getCandidateInfoList();
		StringBuilder mailContent = new StringBuilder();
		
       for (int i = 0; i < candidateInfos.size() && i < 10; i++) {
		
			CandidateInfo candidateInfo = candidateInfos.get(i);
			mailContent.append("<tr  style='border: 1px solid black'>")
						.append("<td  style='border: 1px solid black;'>")
						.append(candidateInfo.getMostRecentJob())
						.append("</td> <td  style='border: 1px solid black;'>")
						.append(candidateInfo.getMinimumExpectedSalary())
						.append("</td> <td  style='border: 1px solid black;'>")
						.append(candidateInfo.getYearsOfExperience())
						.append("</td></tr>");
		}
       String emailCotent = EMAIL_CONTENT_TEMPLATE.replace("{content}", mailContent.toString());
		return emailCotent;
	}

}
