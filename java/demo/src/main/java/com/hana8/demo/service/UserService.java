package com.hana8.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hana8.demo.dto.User;
import com.hana8.demo.repository.UserRepository;

@Service
public class UserService {
	private final UserRepository repository;

	public UserService(UserRepository repository) {
		this.repository = repository;
	}

	public List<User> getUsers() {
		return repository.findAllUsers();
	}

	public Integer registerUser(User user) {
		user.replaceSpaceAndHyphen();
		return repository.createUser(user);
	}

	public User editUser(User user) {
		user.replaceSpaceAndHyphen();
		return repository.updateUser(user);
	}

	public Integer removeUser(Integer id) {
		return repository.deleteUser(id);
	}

	public User getUser(Integer id) {
		return repository.findUserById(id);
	}
}
