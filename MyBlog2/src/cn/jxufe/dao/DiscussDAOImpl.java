package cn.jxufe.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.jxufe.dao.interfaces.DiscussDAO;
import cn.jxufe.entity.TDiscuss;

public class DiscussDAOImpl extends HibernateDaoSupport implements DiscussDAO {

	@Override
	public void addDiscuss(TDiscuss discuss) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		System.out.println(discuss.getD_eid());
		System.out.println(discuss.getD_uid());
		System.out.println(discuss.getTime());
		System.out.println(discuss.getContent());
		String sql = "insert into t_discuss(d_eid,content,d_uid,time) values(?,?,?,?)";
		SQLQuery query = session.createSQLQuery(sql);
		query.setParameter(0, discuss.getD_eid());
		query.setParameter(1, discuss.getContent());
		query.setParameter(2, discuss.getD_uid());
		query.setParameter(3, discuss.getTime());
		query.executeUpdate();
	}

	@Override
	public TDiscuss findDiscuss(TDiscuss discuss) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Query query = session.createQuery("from TDiscuss where d_uid = ? and d_eid = ? and content = ? and time = ?");
		query.setParameter(0, discuss.getD_uid());
		query.setParameter(1, discuss.getD_eid());
		query.setParameter(2, discuss.getContent());
		query.setParameter(3, discuss.getTime());
		discuss = (TDiscuss)query.uniqueResult();
		return discuss;
	}

	@Override
	public boolean deleteDiscuss(int did) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		SQLQuery query = session.createSQLQuery("delete from t_discuss where did = ?");
		query.setParameter(0, did);
		query.executeUpdate();
		return false;
	}

	
	
}
