package com.hana8.demo.security.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import tools.jackson.databind.ObjectMapper;

@Component
@RequiredArgsConstructor
public class LoginFailureHandler implements AuthenticationFailureHandler {
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
		AuthenticationException exception) throws IOException, ServletException {
		System.out.println("*** LoginFailure=" + exception.getMessage());

		ObjectMapper objMapper = new ObjectMapper();
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.println(objMapper.writeValueAsString(Map.of("error", "ERROR_LOGIN")));
		out.close();
	}
}
