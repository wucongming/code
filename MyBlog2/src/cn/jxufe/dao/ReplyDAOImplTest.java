package cn.jxufe.dao;

import org.junit.Test;

import cn.jxufe.dao.interfaces.ReplyDAO;
import cn.jxufe.entity.TReply;

public class ReplyDAOImplTest {

	@Test
	public void addReplyTest() {
		System.out.println("HELLO TEST");
		TReply reply = new TReply();
		reply.setContent("jkjljljl");
		reply.setR_did(9);
		reply.setR_uid(2);
		
		ReplyDAO replyDAO = new ReplyDAOImpl();
		replyDAO.addReply(reply);
	}
}
