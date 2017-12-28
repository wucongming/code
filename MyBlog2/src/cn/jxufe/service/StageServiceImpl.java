package cn.jxufe.service;

import java.util.List;

import cn.jxufe.dao.interfaces.StageDAO;
import cn.jxufe.entity.TStage;
import cn.jxufe.service.interfaces.StageService;

public class StageServiceImpl implements StageService {

	private StageDAO stageDAO;
	
	public StageDAO getStageDAO() {
		return stageDAO;
	}


	public void setStageDAO(StageDAO stageDAO) {
		this.stageDAO = stageDAO;
	}


	@Override
	public List<TStage> findStagesByUid(int uid) {
		// TODO Auto-generated method stub
		return stageDAO.findStagesByUid(uid);
	}


	@Override
	public boolean deleteStageBySid(int sid) {
		// TODO Auto-generated method stub
		return stageDAO.deleteStageBySid(sid);
	}


	@Override
	public boolean addStageByUid(int uid, String stageName) {
		// TODO Auto-generated method stub
		return stageDAO.addStageByUid(uid, stageName);
	}


	@Override
	public boolean updateStageBySid(int sid, String sttageName) {
		// TODO Auto-generated method stub
		return stageDAO.updateStageBySid(sid, sttageName);
	}


	@Override
	public TStage findStageByStageName(String stageName) {
		// TODO Auto-generated method stub
		return stageDAO.findStageByStageName(stageName);
	}
	


}
