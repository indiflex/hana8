package com.hana8.demo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hana8.demo.dto.User;

@Repository
public class UserRepository {
	private final List<User> users = new ArrayList<>();

	public List<User> findAllUsers() {
		return users;
	}
}
