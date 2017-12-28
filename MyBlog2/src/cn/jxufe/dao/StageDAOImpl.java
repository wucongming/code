package cn.jxufe.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.jxufe.dao.interfaces.StageDAO;
import cn.jxufe.entity.TStage;

public class StageDAOImpl extends HibernateDaoSupport implements StageDAO {

	@Override
	public List<TStage> findStagesByUid(int uid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TStage.class);
		Criterion criterion = Restrictions.eq("s_uid", uid);
		criteria.add(criterion);
		List<TStage> list = (List<TStage>)criteria.list();
		return list;
	}

	@Override
	public boolean deleteStageBySid(int sid) {
		// TODO Auto-generated method stub
		System.out.println(sid);
		Session session = getSessionFactory().getCurrentSession();
		SQLQuery query = session.createSQLQuery("delete from t_stage where sid = ?");
		query.setParameter(0, sid);
		query.executeUpdate();
		return false;
	}

	@Override
	public boolean addStageByUid(int uid, String stageName) {
		// TODO Auto-generated method stub
		TStage stage = new TStage();
		stage.setS_uid(uid);
		stage.setStageName(stageName);
		Session session = getSessionFactory().getCurrentSession();
		session.save(stage);
		
		return false;
	}

	@Override
	public boolean updateStageBySid(int sid, String sttageName) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TStage.class);
		Criterion criterion = Restrictions.eq("sid", sid);
		criteria.add(criterion);
		TStage tStage = (TStage)criteria.uniqueResult();
		tStage.setStageName(sttageName);
		session.update(tStage);
		return false;
	}

	@Override
	public TStage findStageByStageName(String stageName) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TStage.class);
		Criterion criterion = Restrictions.eq("stageName", stageName);
		criteria.add(criterion);
		TStage tStage = (TStage)criteria.uniqueResult();
		return tStage;
	}

	@Test
	public void test() {
		System.out.println("哈哈");
		System.out.println(findStageByStageName("Java基础"));
	}
}
