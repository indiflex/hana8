package com.hana8.hello.trythis;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Scanner;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;

import com.hana8.hello.Operation;

class OperatorTest {

	@Test
	void getNumber() {
		Scanner scanner = new Scanner("xx\n.\n2\n1\n");

		Assertions.assertThatThrownBy(() -> Operator.getNumber(scanner))
			.isInstanceOf(IllegalStateException.class)
			.hasMessage("END");

		Operator.getNumber(scanner);
		BigDecimal num1 = Operator.getNumber(scanner);
		Assertions.assertThat(num1).isEqualTo(BigDecimal.valueOf(1));

		scanner.close();
	}

	@Test
	void testGetNumber() {
		Scanner scanner = new Scanner("1\n\n");

		BigDecimal one = BigDecimal.valueOf(1);
		BigDecimal defValue = BigDecimal.valueOf(100);

		Assertions.assertThat(Operator.getNumber(scanner, 1, defValue)).isEqualTo(one);
		Assertions.assertThat(Operator.getNumber(scanner, 1, defValue)).isEqualTo(defValue);
		scanner.close();
	}

	@Test
	void getOperation() {
		Scanner scanner = new Scanner("/\n+\n");
		BigDecimal v0 = BigDecimal.valueOf(0);
		BigDecimal v1 = BigDecimal.valueOf(1);
		BigDecimal v2 = BigDecimal.valueOf(2);

		Operation operDiv = Operator.getOperation(scanner);
		Assertions.assertThat(operDiv.apply(v2, v1)).isEqualTo(v2.divide(v1, RoundingMode.HALF_UP));
		Assertions.assertThatThrownBy(() -> operDiv.apply(v2, v0))
			.isInstanceOf(ArithmeticException.class)
			.hasMessageContaining("/");

		Operation operPlus = Operator.getOperation(scanner);
		Assertions.assertThat(operPlus).isEqualTo(Operation.PLUS);
		Assertions.assertThat(operPlus.apply(v1, v2)).isEqualTo(v1.add(v2));
		scanner.close();
	}
}
