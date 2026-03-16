package com.hana8.demo.security.exception;

public class CustomJwtException extends RuntimeException {
	public CustomJwtException(String msg) {
		super("JwtErr:" + msg);
	}
}
