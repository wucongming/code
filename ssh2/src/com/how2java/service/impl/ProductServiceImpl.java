package com.how2java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.how2java.dao.ProductDAO;
import com.how2java.pojo.Product;
import com.how2java.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Transactional(rollbackFor={Exception.class})
	public List<Product> list() throws Exception {
		List<Product> products= productDAO.list();
		Product p = new Product();
		p.setName("product ");
		productDAO.add(p);
		if(true)
			throw new Exception();
		Product p1 = new Product();
		p1.setName("product ");
		productDAO.add(p1);
		products.add(p1);
		return products;
	}

	
}
