package com.hana8.demo.service;

import org.springframework.stereotype.Component;

@Component("hello-service")
public class HelloService {
	public String sayHello() {
		return "Good Morning!";
	}
}
