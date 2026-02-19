package com.hana8.hello.trythis;

public class Reflects {
	public static void makeNotNullFields(Object obj) {
		
	}

	public static void main(String[] args) {
		Reflection r = new Reflection();
		System.out.println("before = " + r);

		Reflects.makeNotNullFields(r);
		System.out.println("after = " + r);
	}
}
