package com.hana8.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana8.demo.dto.LoginRequest;
import com.hana8.demo.security.JwtUtil;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@Tag(name = "로그인", description = "로그인/가입")
public class AuthController {
	private final AuthenticationManager authenticationManager;
	private final JwtUtil jwtUtil;

	@PostMapping("signin")
	@Tag(name = "로그인", description = "사용자 로그인")
	ResponseEntity<?> signIn(LoginRequest loginRequest) {
		try {
			Authentication authenticate = authenticationManager.authenticate(
				new UsernamePasswordAuthenticationToken(loginRequest.username(), loginRequest.password())
			);

			return ResponseEntity.ok(jwtUtil.authenticationToClaims(authenticate));
		} catch (AuthenticationException e) {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid!");
		}
	}
}
