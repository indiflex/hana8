package com.hana8.demo.service;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

@Component
@Lazy
public class LazyCallService {
	public LazyCallService() {
		System.out.println("------------ LazyCallService!");
	}

	public String call() {
		return "Lazy Call Service!";
	}
}
