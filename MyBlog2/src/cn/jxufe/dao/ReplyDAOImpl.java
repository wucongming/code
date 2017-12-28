package cn.jxufe.dao;

import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.jxufe.dao.interfaces.ReplyDAO;
import cn.jxufe.entity.TReply;

public class ReplyDAOImpl extends HibernateDaoSupport implements ReplyDAO {

	@Override
	public void addReply(TReply reply) {
		// TODO Auto-generated method stub
		System.out.println();
		Session session = getSessionFactory().getCurrentSession();	
		session.save(reply);
	}

}
