package com.hana8.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hana8.demo.dto.User;
import com.hana8.demo.repository.UserRepository;

@Service
public class UserService {
	// @Autowired
	private UserRepository repository;

	// public UserService() {
	// 	this.repository = new UserRepository();
	// }

	public List<User> getUsers() {
		return repository.findAllUsers();
	}
}
