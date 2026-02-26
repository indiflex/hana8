package com.hana8.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.hana8.demo.service.GreetingService;

@Controller
public class GreetingController {
	private final GreetingService service;

	@Autowired
	// public GreetingController(@Qualifier("helloCallService") GreetingService service) {
	public GreetingController(GreetingService service) {
		this.service = service;
	}

	public String call() {
		return this.service.call();
	}
}
