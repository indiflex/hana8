package com.hana8.demo;

import org.springframework.stereotype.Controller;

@Controller("/hello")
public class HelloController {
	public String hello() {
		return "Hello, World!";
	}
}
