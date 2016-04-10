package com.scott.learning_springsecurity.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/user/")
public class UserController {

	@RequestMapping(value = "/login/{userName}", method = RequestMethod.GET)
	public String login(HttpServletRequest request, @PathVariable("userName") String userName) {
		return "userName: " + userName;
	}
}
