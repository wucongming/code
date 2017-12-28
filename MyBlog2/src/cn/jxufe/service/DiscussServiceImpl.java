package cn.jxufe.service;

import cn.jxufe.dao.interfaces.DiscussDAO;
import cn.jxufe.entity.TDiscuss;
import cn.jxufe.service.interfaces.DiscussService;

public class DiscussServiceImpl implements DiscussService {


	private DiscussDAO discussDAO;

	public DiscussDAO getDiscussDAO() {
		return discussDAO;
	}

	public void setDiscussDAO(DiscussDAO discussDAO) {
		this.discussDAO = discussDAO;
	}
	
	@Override
	public void addDiscuss(TDiscuss discuss) {
		// TODO Auto-generated method stub
		discussDAO.addDiscuss(discuss);
	}

	@Override
	public TDiscuss findDiscuss(TDiscuss discuss) {
		// TODO Auto-generated method stub
		return discussDAO.findDiscuss(discuss);
	}

	@Override
	public boolean deleteDiscuss(int did) {
		// TODO Auto-generated method stub
		return discussDAO.deleteDiscuss(did);
	}

}
