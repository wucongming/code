package com.how2java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.how2java.service.ProductService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private ProductService productService;

	
	
	@RequestMapping(value="/delete.action",method = RequestMethod.GET) 
	public String del() throws Exception {
		System.out.println("del");
		productService.list();
		return "index";
	}
}
