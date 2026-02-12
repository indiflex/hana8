package com.hana8.hello.oop;

public class OopBank {
	public static void main(String[] args) {
		Account[] accounts = {
			new FreeAccount(),
			new MonthlyAcount(),
			new FundAccount()
		};

		FreeAccount free = (FreeAccount)accounts[0];
		free.deposit(10000);
		free.transfer(accounts[1], 2000);
		free.transfer(accounts[2], 3000);

		// accounts[0].deposit(10000);
		// if (accounts[0] instanceof FreeAccount free) {
		// 	free.transfer(accounts[1], 2000);
		// 	free.transfer(accounts[2], 3000);
		// }

		for (Account account : accounts) {
			if (account instanceof Withdrawable with) {
				with.withdraw(account.amount / 2);
			}

			System.out.println(account);
		}

		accounts[1].deposit(1000);
		accounts[1].deposit(1000);
		accounts[1].deposit(1000);
		((MonthlyAcount)accounts[1]).mature(free);
	}
}
