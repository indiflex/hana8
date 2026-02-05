package com.hana8.hello;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

class CalcTest {
	// private final Calc c1 = new Calc(1, 2);
	static Calc c1;
	static Calc c2;

	@BeforeAll
	static void setup() {
		c1 = new Calc(1, 2);
		c2 = new Calc(3, 5);
	}

	@Test
	void add() {
		assertEquals(3, c1.add());
		assertEquals(8, c2.add());
	}

	@Test
	void sub() {
		assertEquals(1, c1.sub());
		assertEquals(2, c2.sub());
	}
}
