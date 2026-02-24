package com.hana8.demo.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.hana8.demo.dto.User;

@Repository
public class UserRepository {
	private final List<User> users = new ArrayList<>();

	public List<User> findAllUsers() {
		return users;
	}

	public Integer createUser(User user) {
		int id = users.size() + 1;
		user.setId(id);
		users.add(user);
		return id;
	}

	public User updateUser(User user) {
		User oldUser = users.stream().filter(_user -> _user.getId() == user.getId()).findFirst().orElse(null);

		if (oldUser == null)
			return null;

		oldUser.setUsername(user.getUsername());
		oldUser.setEmail(user.getEmail());
		oldUser.setTel(user.getTel());

		return oldUser;
	}

	public Integer deleteUser(Integer id) {
		Optional<User> user = users.stream().filter(_user -> _user.getId() == id).findFirst();
		if (user.isEmpty())
			return 0;

		user.ifPresent(users::remove);
		return 1;
	}
}
