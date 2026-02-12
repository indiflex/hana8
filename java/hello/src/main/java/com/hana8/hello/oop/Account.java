package com.hana8.hello.oop;

import java.util.Objects;

public class Account implements Comparable<Account> {
	private final String name;
	protected double amount;

	public Account(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		return Objects.hashCode(name);
	}

	@Override
	public boolean equals(Object o) {
		if (o == null || getClass() != o.getClass())
			return false;
		Account account = (Account)o;
		return Objects.equals(name, account.name);
	}

	@Override
	public String toString() {
		return "Account{" +
			"name='" + name + '\'' +
			", amount=" + amount +
			'}';
	}

	public void deposit(double amount) {
		this.amount += amount;
	}

	protected void close() {
		System.out.println(this.name + " 통장을 해지하였습니다!");
	}

	@Override
	public int compareTo(Account account) {
		return this.name.compareTo(account.name);
	}

}
