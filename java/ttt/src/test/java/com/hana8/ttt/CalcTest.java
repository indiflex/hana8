package com.hana8.ttt;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

class CalcTest {
	private Calc calc;

	@BeforeEach
	void setUp() {
		this.calc = new Calc();
	}

	@Test
	void add() throws Exception {
		int add = calc.add(1, 2);
		assertEquals(3, add);
		assertThat(add).isEqualTo(3);
		assertThat(calc.add(5, 10)).isEqualTo(15);
		assertThrows(Exception.class, () -> calc.add(0, 0));
		assertThatThrownBy(() -> calc.add(0, 0))
			.isInstanceOf(Exception.class)
			.hasMessageContaining("zero")
			.hasMessage("Cannot all zero!");
	}

	@ParameterizedTest
	@CsvSource({"1, 2, 3", "4, 5, 9", "7, 8, 15"})
	void addMany(int a, int b, int exp) throws Exception {
		assertEquals(exp, calc.add(a, b));
	}
}
