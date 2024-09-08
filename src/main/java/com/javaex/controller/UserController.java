package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.javaex.service.UserService;

@Controller
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	

}
