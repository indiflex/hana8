package com.hana8.demo.controller;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana8.demo.security.JwtUtil;
import com.hana8.demo.security.exception.CustomJwtException;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class JwtRefreshContoller {
	private final JwtUtil jwtUtil;

	@RequestMapping("/api/subscriber/refresh")
	public Map<String, Object> refresh(@RequestHeader("Authorization") String authHeader, String refreshToken) {
		if (refreshToken == null)
			throw new CustomJwtException("NULL_REFRESHTOKEN");

		if (authHeader == null || authHeader.length() < 7)
			throw new CustomJwtException("INVALID_TOKEN_STRING");

		String accessToken = authHeader.substring(7);
		if (!didExpireToken(accessToken)) {
			return Map.of("accessToken", accessToken, "refreshToken", refreshToken);
		}

		Map<String, Object> claim = jwtUtil.validateToken(refreshToken);
		String newAccessToken = jwtUtil.generateToken(claim, 10);
		String newRefreshToken = isSomeLeftTime((long)claim.get("exp"))
			? jwtUtil.generateToken(claim, 60 * 24)
			: refreshToken;

		return Map.of("accessToken", newAccessToken, "refreshToken", newRefreshToken);
	}

	private boolean isSomeLeftTime(long exp) {
		long nowSec = System.currentTimeMillis() / 1000;
		return (exp - nowSec) < 60 * 60;
	}

	private boolean didExpireToken(String accessToken) {
		try {
			jwtUtil.validateToken(accessToken);
		} catch (CustomJwtException e) {
			return true;
		}
		return false;
	}
}
