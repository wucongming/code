package cn.jxufe.service.interfaces;

import java.util.List;

import cn.jxufe.entity.TStage;

public interface StageService {
	
	public List<TStage> findStagesByUid(int uid);

	public boolean deleteStageBySid(int sid);
	
	public boolean addStageByUid(int uid,String stageName);
	
	public boolean updateStageBySid(int sid,String sttageName);
	
	public TStage findStageByStageName(String stageName);
}
