package cn.jxufe.service;

import cn.jxufe.dao.interfaces.ReplyDAO;
import cn.jxufe.entity.TReply;
import cn.jxufe.service.interfaces.ReplyService;

public class ReplyServiceImpl implements ReplyService {

	private ReplyDAO replyDAO;
	
	public ReplyDAO getReplyDAO() {
		return replyDAO;
	}

	public void setReplyDAO(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}

	@Override
	public void addReply(TReply reply) {
		// TODO Auto-generated method stub
		replyDAO.addReply(reply);
	}

}
