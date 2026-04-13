package com.hana8.hello;

import java.math.BigDecimal;
import java.util.function.BinaryOperator;

public enum Operation {
	PLUS('+', BigDecimal::add),
	MINUS('-', BigDecimal::subtract),
	MULTIPLY('*', BigDecimal::multiply),
	DIVIDE('/', BigDecimal::divide);

	private final char cmd;
	// private final BiFunction<BigDecimal, BigDecimal, BigDecimal> fn;
	private final BinaryOperator<BigDecimal> fn;

	Operation(char cmd, BinaryOperator<BigDecimal> fn) {
		this.cmd = cmd;
		this.fn = fn;
	}

	public BigDecimal apply(BigDecimal v1, BigDecimal v2) {
		return fn.apply(v1, v2);
	}

	public boolean isMe(char cmd) {
		return this.cmd == cmd;
	}
}
