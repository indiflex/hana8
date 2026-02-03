package com.hana8.ttt;

public class Calc {
	public int add(int a, int b) throws Exception {
		if (a == 0 && b == 0) throw new Exception("Cannot all zero!");
		return a + b;
	}
}
