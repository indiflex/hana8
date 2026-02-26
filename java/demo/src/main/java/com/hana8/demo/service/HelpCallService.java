package com.hana8.demo.service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class HelpCallService implements GreetingService {
	@Override
	public String call() {
		return "Help Call Service!";
	}

	@Override
	public String sayHello() {
		return "Help!";
	}

	public void initialize() {
		System.out.println("HelpCall Initialization!");
	}

	public void destroy() {
		System.out.println("HelpCall Destroyment!");
	}
}
