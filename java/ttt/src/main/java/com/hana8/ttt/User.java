package com.hana8.ttt;

import java.util.Objects;

public class User {
	private final int id;
	private String name;

	public User(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, name);
	}

	@Override
	public boolean equals(Object o) {
		if (o == null || getClass() != o.getClass())
			return false;
		User user = (User)o;
		return id == user.id && Objects.equals(name, user.name);
	}
}
