package com.hana8.demo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana8.demo.dto.User;
import com.hana8.demo.service.UserService;

@RestController("/users")
public class UserController {
	private UserService service;

	@GetMapping("")
	public List<User> getUserList() {
		return service.getUsers();
	}

}
