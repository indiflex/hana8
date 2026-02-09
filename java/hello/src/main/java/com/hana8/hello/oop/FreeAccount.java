package com.hana8.hello.oop;

public class FreeAccount extends Account implements Withdrawable, Transferable {
	public FreeAccount() {
		super("자유입출금");
	}

	@Override
	public void withdraw(double amount) {
		this.amount -= amount;
	}

	@Override
	public void transfer(Account toAccount, double amount) {
		toAccount.deposit(amount);
		this.withdraw(amount);
	}
}
