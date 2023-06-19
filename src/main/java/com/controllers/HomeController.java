package com.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.RawMaterialDao;
import com.model.RawMaterial;
@Controller
public class HomeController {
	@RequestMapping("/")
	public String home()
	{
	System.out.println("This is home url..");
	return "index";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request)
	{
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	if(email.equals("chvngaurav@gmail.com") && pass.equals("9730"))
	{
			return "dashboard";
	}
	else
	{
		return "";
	}
	}
	
	@RequestMapping("/Addraw")
	public String addraw()
	{
		return "addraw";
	}
	
	@RequestMapping("/Addprocess")
	public String addprocess()
	{
		return "addpro";
	}
	
	@RequestMapping("/logout")
	public String logout()
	{
		return "index";
	}
	
	
}
