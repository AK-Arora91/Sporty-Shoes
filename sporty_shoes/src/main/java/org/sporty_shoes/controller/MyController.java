package org.sporty_shoes.controller;

import org.sporty_shoes.model.Admin;
import org.sporty_shoes.repository.AdminRepository;
import org.sporty_shoes.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {
	
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	ProductRepository productRepository;

	@RequestMapping("/")
	public String showHome() {
		return "Home";
	}
	
	@RequestMapping(value="adminLogin",method =RequestMethod.GET)
	public String adminLoginPage() {
		return "AdminLogin";
	}
	
	@RequestMapping(value="forgotPassword",method =RequestMethod.GET)
	public String adminForgotPasswordPage() {
		return "ForgotPassword";
	}
	
	
	@RequestMapping(value="adminPage",method=RequestMethod.POST)
	public String adminPage(@RequestParam(name="email")String email,
			@RequestParam(name="password")String password,ModelMap map) {
		
		if(adminRepository.verifyAdmin(new Admin(email,password)))
			return "AdminPage";
		else {
			map.addAttribute("message", "Invalid Details");
			return "AdminLogin";
		}
		
	}
	
	@RequestMapping(value="product",method=RequestMethod.GET)
	public String products(ModelMap map) {
		
		map.addAttribute("productList",productRepository.getAllProducts());
		return "Product";
		
	}
}
