package cn.jxufe.service;

import cn.jxufe.dao.interfaces.TEssayDAO;
import cn.jxufe.entity.TEssay;
import cn.jxufe.service.interfaces.TEssayService;

public class TEssayServiceImpl implements TEssayService {

	private TEssayDAO tessayDAO;
	
	public TEssayDAO getTessayDAO() {
		return tessayDAO;
	}

	public void setTessayDAO(TEssayDAO tessayDAO) {
		this.tessayDAO = tessayDAO;
	}

	@Override
	public boolean addTEssay(TEssay tessay) {
		// TODO Auto-generated method stub
		return tessayDAO.addTEssay(tessay);
	}

	@Override
	public boolean deleteTEssayByEid(int eid) {
		// TODO Auto-generated method stub
		return tessayDAO.deleteTEssayByEid(eid);
	}

	@Override
	public TEssay findTEssayByEssayName(String name) {
		// TODO Auto-generated method stub
		return tessayDAO.findTEssayByEssayName(name);
	}

	@Override
	public TEssay findTEssayByEid(int eid) {
		// TODO Auto-generated method stub
		return tessayDAO.findTEssayByEid(eid);
	}

	@Override
	public TEssay updateEssayContent(int eid,String content) {
		// TODO Auto-generated method stub
		return tessayDAO.updateEssayContent(eid,content);
	}

	@Override
	public boolean updateEssayByEid(TEssay tessay) {
		// TODO Auto-generated method stub
		return tessayDAO.updateEssayByEid(tessay);
	}

	@Override
	public boolean updateEssayVisiable(int eid, int othervisiable) {
		// TODO Auto-generated method stub
		return tessayDAO.updateEssayVisiable(eid, othervisiable);
	}

}
