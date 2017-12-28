package cn.jxufe.dao.interfaces;

import java.util.List;

import cn.jxufe.entity.TStage;

public interface StageDAO {

	public List<TStage> findStagesByUid(int uid);
	
	public boolean deleteStageBySid(int sid);
	
	public boolean addStageByUid(int uid,String stageName);
	
	public boolean updateStageBySid(int sid,String sttageName);
	
	public TStage findStageByStageName(String stageName);
}
