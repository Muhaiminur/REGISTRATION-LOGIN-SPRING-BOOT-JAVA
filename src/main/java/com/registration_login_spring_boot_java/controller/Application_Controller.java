package com.registration_login_spring_boot_java.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.registration_login_spring_boot_java.modal.User;
import com.registration_login_spring_boot_java.services.User_Service;

@Controller
public class Application_Controller {
	
	
	// this is used for calling save method 
	@Autowired
	User_Service userService;

	//use for checking view without jsp file
	@ResponseBody
	@RequestMapping("/abir")
	public String abir() {
		return "this is abir.how can i help you? ";
	}
	
	//use for home view
	@RequestMapping("/")
	public String welcome() {
		return "index";
	}
	
	//new user registration
	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "index";
	}
	
	//after submit  botton this will call
	@PostMapping("/save_user")
	public void registerUser (@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request,HttpServletResponse resp) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		try {
			resp.sendRedirect("/");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
