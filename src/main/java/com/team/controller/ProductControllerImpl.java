package com.team.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.team.dto.ProductDTO;
import com.team.service.ProductService;

@Controller
public class ProductControllerImpl implements ProductController{
	@Autowired
	ProductService service;
	
	@RequestMapping("productAll")
	public String productlistAll(Model model) {
		model.addAttribute("list",(ArrayList<ProductDTO>)service.productlistAll());
		return "product/productAll";
	}

	/* 구분 */
	@RequestMapping("topProduct")
	public String topProductlist(Model model) {
		model.addAttribute("toplist",(ArrayList<ProductDTO>)service.topProductlist());
		return "product/topProduct";
	}
	@RequestMapping("outerProduct")
	public String outerProductlist(Model model) {
		model.addAttribute("outerlist",(ArrayList<ProductDTO>)service.outerProductlist());
		return "product/outerProduct";
	}
	@RequestMapping("pantProduct")
	public String pantProductlist(Model model) {
		model.addAttribute("pantlist",(ArrayList<ProductDTO>)service.pantProductlist());
		return "product/pantProduct";
	}
	@RequestMapping("accProduct")
	public String accProductlist(Model model) {
		model.addAttribute("acclist",(ArrayList<ProductDTO>)service.accProductlist());
		return "product/accProduct";
	}
	
	
	@RequestMapping("productInformation")
	public String clothInfoInput() {
		service.clothInfoInput();
		return "product/productInformation";
	}
	
	
}