package com.how2java.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.how2java.pojo.Product;


public interface ProductService {
	
	public List<Product> list() throws Exception;
}
