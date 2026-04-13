package com.hana8.demo.controller;

import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class HelloController {
	// private static final Logger log = LoggerFactory.getLogger(HelloController.class);

	@RequestMapping("/")
	public String index(@RequestHeader("User-Agent") String userAgent,
		@CookieValue(value = "token", required = false) String token) {
		return """
			Hana8 Springboot Demo!
			token: %s,
			User-Agent: %s
			""".formatted(token, userAgent);
	}

	@GetMapping("/set-cookie")
	public String setCookie(HttpServletResponse res) {
		Cookie cookie = new Cookie("token", "HANA");
		cookie.setHttpOnly(true);   // JS에서 접근 못하게
		cookie.setSecure(true);     // HTTPS에서만 전송
		cookie.setPath("/");        // 모든 경로에서 사용
		cookie.setMaxAge(60 * 60);  // 만료(초단위, 1시간)

		res.addCookie(cookie);
		return "ok";
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
