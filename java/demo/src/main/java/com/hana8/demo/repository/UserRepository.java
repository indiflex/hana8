package com.hana8.demo.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.hana8.demo.dto.User;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class UserRepository {
	private final List<User> users = new ArrayList<>();

	public List<User> findAllUsers() {
		return users;
	}

	public Integer createUser(User user) {
		int id = users.stream().mapToInt(User::getId).max().orElse(0) + 1;
		user.setId(id);
		users.add(user);
		return id;
	}

	public User updateUser(User user) {
		return users.stream().filter(_user -> _user.getId() == user.getId())
			.peek(oldUser -> {
				oldUser.setUsername(user.getUsername());
				oldUser.setEmail(user.getEmail());
				oldUser.setTel(user.getTel());
			}).findFirst().orElse(null);

		// User oldUser = users.stream().filter(_user -> _user.getId() == user.getId()).findFirst().orElse(null);
		//
		// if (oldUser == null)
		// 	return null;
		//
		// oldUser.setUsername(user.getUsername());
		// oldUser.setEmail(user.getEmail());
		// oldUser.setTel(user.getTel());
		//
		// return oldUser;
	}

	public Integer deleteUser(Integer id) {
		Optional<User> foundUser = users.stream().filter(_user -> _user.getId() == id).findFirst();
		// return foundUser.ifPresentOrElse(users::remove, 0);

		if (foundUser.isEmpty())
			return 0;

		foundUser.ifPresent(users::remove);
		return 1;
	}

	public User findUserById(Integer id) {
		return users.stream().filter(user -> user.getId() == id).findFirst().orElse(null);
	}
}
