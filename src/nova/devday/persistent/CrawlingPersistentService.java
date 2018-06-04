package nova.devday.persistent;

import java.util.List;

import com.nova.devday.CandidateInfo;

import ch.ivyteam.di.restricted.DiCore;
import ch.ivyteam.ivy.business.data.store.restricted.BusinessDataPersistence;
import ch.ivyteam.ivy.environment.Ivy;

public class CrawlingPersistentService {
		
		public String addCandidate(CandidateInfo candidateInfo){
			return Ivy.repo().save(candidateInfo).getId();
		}
		
		public List<CandidateInfo> getCandidateInfoList(){
			List<CandidateInfo> list = Ivy.repo().search(CandidateInfo.class).limit(10000).execute().getAll();
			if(!list.isEmpty()){
				list.sort((CandidateInfo a, CandidateInfo b) -> (int) (b.getUpdatedDate().getTime() - a.getUpdatedDate().getTime()) / 1000);
			}
			return list;
		}
		
		public  void eraseDB(){
			DiCore.getGlobalInjector().getInstance(BusinessDataPersistence.class).clearAll();
		}
		
		public void saveOrUpdate(CandidateInfo candidateInfo) {
			CandidateInfo existing = Ivy.repo()
					.search(CandidateInfo.class)
					.textField("candidateId").containsPhrase(candidateInfo.getCandidateId())
					.limit(1).execute().getFirst();
			if (existing != null){
				Ivy.repo().delete(existing);
			}
			Ivy.repo().save(candidateInfo);
		}
}
