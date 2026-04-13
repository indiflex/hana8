package com.hana8.hello.oop;

public class MonthlyAcount extends Account implements Transferable {
	public MonthlyAcount() {
		super("정기적금");
	}

	@Override
	public void transfer(Account toAccount, double amount) {
		toAccount.deposit(amount);
		this.amount -= amount;
	}

	public void mature(FreeAccount freeAccount) {
		this.transfer(freeAccount, this.amount);
		this.close();
	}
}
