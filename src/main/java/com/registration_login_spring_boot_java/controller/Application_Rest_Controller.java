package com.registration_login_spring_boot_java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.registration_login_spring_boot_java.modal.User;
import com.registration_login_spring_boot_java.services.User_Service;

@RestController
public class Application_Rest_Controller {
	
	@Autowired
	private User_Service userService;
	
	@GetMapping("/rest")
	public String welcome() {
		return "index";
	}
	//only get mapping used for saving from http link
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
		User user = new User(username, firstname, lastname, age, password);
		userService.saveMyUser(user);
		return "User Saved";
	}
}
