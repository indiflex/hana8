package com.hana8.hello;

import java.util.Arrays;

public enum Grade {
	BASIC(1), VIP(2), VVIP(3);

	private final int level;

	Grade(int level) {
		System.out.println("*******" + this.name() + ',' + level);
		this.level = level;
	}

	public static void main(String[] args) {
		System.out.println("Grade.VIP = " + Grade.VIP.level());
		Grade[] grades = Grade.values();
		System.out.println("grades = " + Arrays.toString(grades));
	}

	public int level() {
		return this.level;
	}
}
