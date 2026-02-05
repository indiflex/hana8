package com.hana8.hello;

public class Calc {
	private final int a;
	private final int b;

	public Calc(int a, int b) {
		this.a = a;
		this.b = b;
	}

	public static void main(String[] args) {
		Calc c = new Calc(1, 2);
		System.out.println("c.add() = " + c.add());
		System.out.println("c.sub() = " + c.sub());

		Calc c2 = new Calc(3, 5);
		System.out.println("c2.sub() = " + c2.sub());
	}

	public int add() {
		return this.a + this.b;
	}

	public int sub() {
		return Math.abs(this.a - this.b);
	}
}
