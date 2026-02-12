package com.hana8.hello.oop;

public class Account {
	private final String name;
	protected double amount;

	public Account(String name) {
		this.name = name;
	}

	public void deposit(double amount) {
		this.amount += amount;
	}

	protected void close() {
		System.out.println(this.name + " 통장을 해지하였습니다!");
	}

	@Override
	public String toString() {
		return "Account{" +
			"name='" + name + '\'' +
			", amount=" + amount +
			'}';
	}
}
