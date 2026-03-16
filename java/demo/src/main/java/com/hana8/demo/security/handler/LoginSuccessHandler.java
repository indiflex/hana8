package com.hana8.demo.security.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.hana8.demo.dto.SubscriberDTO;
import com.hana8.demo.security.JwtUtil;
import com.hana8.demo.security.exception.CustomJwtException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import tools.jackson.databind.ObjectMapper;

@Component
@RequiredArgsConstructor
public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	private final JwtUtil jwtUtil;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
		Authentication authentication) throws IOException, ServletException {
		System.out.println("*** SuccessHandler.auth=" + authentication);

		SubscriberDTO dto = (SubscriberDTO)authentication.getPrincipal();
		if (dto == null)
			throw new CustomJwtException("Invalid Authentication");

		dto.setPwd("");
		Map<String, Object> claims = dto.getClaims();
		claims.put("accessToken", jwtUtil.generateToken(claims, 10));
		claims.put("refreshToken", jwtUtil.generateToken(claims, 24 * 60));

		ObjectMapper objMapper = new ObjectMapper();
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.println(objMapper.writeValueAsString(claims));
		out.close();
	}
}
