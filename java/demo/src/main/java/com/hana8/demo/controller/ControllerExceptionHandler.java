package com.hana8.demo.controller;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ControllerExceptionHandler {
	@ExceptionHandler(IllegalArgumentException.class)
	public ResponseEntity<String> handleIllegalExceptionHandler(IllegalArgumentException e) {
		String message = e.getMessage();
		return ResponseEntity.badRequest().body("Warn: " + message);
	}

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<Map<String, String>> handleNotValidExceptionHandler(MethodArgumentNotValidException e) {
		System.out.println("e.getMessage() = " + e.getMessage());
		Map<String, String> map = e.getBindingResult().getFieldErrors().stream()
			.collect(
				Collectors.toMap(
					FieldError::getField,
					fe -> Objects.toString(fe.getDefaultMessage(), "Not Valid!"),
					(existing, newValue) -> existing + ", " + newValue,
					LinkedHashMap::new)
			);
		return ResponseEntity.badRequest().body(map);
	}

	@ExceptionHandler(Exception.class)
	public ResponseEntity<String> handleOthersExceptionHandler(Exception e) {
		String message = e.getMessage();
		return ResponseEntity.internalServerError().body("Error: " + message);
	}
}
