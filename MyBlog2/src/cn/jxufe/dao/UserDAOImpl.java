package cn.jxufe.dao;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.jxufe.dao.interfaces.UserDAO;
import cn.jxufe.entity.TUser;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public TUser login(TUser tuser) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TUser.class);
		Criterion criterion1 = Restrictions.eq("account", tuser.getAccount());
		Criterion criterion2 = Restrictions.eq("passWord", tuser.getPassWord());
		Criterion criterion3 = Restrictions.and(criterion1, criterion2);
		criteria.add(criterion3);
		TUser user = (TUser)criteria.uniqueResult();
		return user;
	}

	public TUser findUserByAccount(String account) {
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TUser.class);
		Criterion criterion = Restrictions.eq("account", account);
		criteria.add(criterion);
		TUser user = (TUser)criteria.uniqueResult();
		return user;
	}
	@Override
	public TUser addUser(TUser tuser) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		SQLQuery query = session.createSQLQuery("insert into t_user(userName,account,passWord) values(?,?,?);");
		query.setParameter(0, tuser.getUserName());
		query.setParameter(1, tuser.getAccount());
		query.setParameter(2, tuser.getPassWord());
		query.executeUpdate();
		return null;
	}

}
