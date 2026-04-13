package com.hana8.hello.generic;

public class CatOrDog<T extends Dog, U extends Cat> {
	private final T a1;
	private final U a2;

	public CatOrDog(T a1, U a2) {
		this.a1 = a1;
		this.a2 = a2;
	}

	public void sound() {
		System.out.println(a1);
		a1.bark();
		System.out.println(a2);
		a2.kukkuki();
	}
}
