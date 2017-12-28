package cn.jxufe.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.jxufe.dao.interfaces.TEssayDAO;
import cn.jxufe.entity.TEssay;

public class TEssayDAOImpl extends HibernateDaoSupport implements TEssayDAO {

	/**
	 * �������£��������µ�һЩ������
	 * 				���磺���µı��⡢���µĴ������ݡ����µĴ��ͼ��
	 * 
	 * �������ݺ����
	 */
	@Override
	public boolean addTEssay(TEssay tessay) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		
		session.save(tessay);
	
		return false;
	}

	/**
	 * ���eidɾ���Ӧ������
	 */
	@Override
	public boolean deleteTEssayByEid(int eid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		SQLQuery query = session.createSQLQuery("delete from t_essay where eid = ?");
		query.setParameter(0, eid);
		query.executeUpdate();
		return false;
	}

	/**
	 * �����������Ҷ�Ӧ������
	 * 
	 * ����һ����������֮ǰҪ�ж��Ƿ����һ�������
	 * 	��
	 * 	��
	 * 	��
	 * 	��
	 * 
	 */
	@Override
	public TEssay findTEssayByEssayName(String name) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TEssay.class);
		Criterion criterion = Restrictions.eq("name", name);
		criteria.add(criterion);
		List<TEssay> list = criteria.list();
		return list.size() == 0 ? null : list.get(0);
	}

	/**
	 * ͨ��eid��������
	 */
	@Override
	public TEssay findTEssayByEid(int eid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TEssay.class);
		Criterion criterion = Restrictions.eq("eid", eid);
		criteria.add(criterion);
		TEssay tessay = (TEssay)criteria.uniqueResult();
		return tessay;
	}

	@Override
	public TEssay updateEssayContent(int eid,String content) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TEssay.class);
		Criterion criterion = Restrictions.eq("eid", eid);
		criteria.add(criterion);
		TEssay tessay = (TEssay)criteria.uniqueResult();
		tessay.setContent(content);
		session.save(tessay);
		return tessay;
	}

	@Override
	public boolean updateEssayByEid(TEssay tessay) {
		// TODO Auto-generated method stub
		TEssay findTEssayByEid = findTEssayByEid(tessay.getEid());
		System.out.println("EID"+tessay.getEid());
		findTEssayByEid.setName(tessay.getName());
		findTEssayByEid.setTxt(tessay.getTxt());
		findTEssayByEid.setE_sid(tessay.getE_sid());
		Session session = getSessionFactory().getCurrentSession();
		session.save(findTEssayByEid);
		return false;
	}

	@Override
	public boolean updateEssayVisiable(int eid, int othervisiable) {
		// TODO Auto-generated method stub
		System.out.println("EID"+eid);
		System.out.println(othervisiable);
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(TEssay.class);
		Criterion criterion = Restrictions.eq("eid", eid);
		criteria.add(criterion);
		TEssay essay = (TEssay)criteria.uniqueResult();
		essay.setOthervisiable(othervisiable);
		session.update(essay);
		return false;
	}

}
