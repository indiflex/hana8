package com.hana8.hello;

import java.util.Objects;

public class TUser {
	private final int id;
	private final String name;

	public TUser(int id, String name) {
		this.id = id;
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
		TUser tUser = (TUser)o;
		return id == tUser.id && Objects.equals(name, tUser.name);
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
}
