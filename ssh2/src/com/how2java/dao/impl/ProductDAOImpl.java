package com.how2java.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.how2java.dao.ProductDAO;
import com.how2java.pojo.Product;
@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Product> list() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Product").list();
	}

	@Override
	public void add(Product p) {
		Session session = sessionFactory.getCurrentSession();
		session.save(p);
	}
	
}
