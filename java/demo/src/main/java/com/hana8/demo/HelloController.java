package com.hana8.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class HelloController {
	// private static final Logger log = LoggerFactory.getLogger(HelloController.class);

	@RequestMapping("/")
	public String index() {
		return "Hana8 Springboot Demo!";
	}

	@GetMapping("/hello")
	public String hello() {
		return "Hello, World!";
	}

	@GetMapping("/hello-servlet")
	public String helloServlet(String name) {
		log.info("INFO: {} - {}", name, 123);
		log.debug("DEBUG: ");
		log.warn("WARN: warn");
		log.error("ERROR!!");
		return "Hello~ " + name + "!!";
	}
}
