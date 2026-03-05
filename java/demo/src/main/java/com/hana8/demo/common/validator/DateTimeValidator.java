package com.hana8.demo.common.validator;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class DateTimeValidator implements ConstraintValidator<DateTime, String> {
	private DateTimeFormatter formatter;

	@Override
	public void initialize(DateTime annotation) {
		this.formatter = DateTimeFormatter.ofPattern(annotation.value());
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext ctx) {
		if (value == null || value.isBlank())
			return true;

		try {
			LocalDateTime.parse(value, this.formatter);
			return true;
		} catch (DateTimeParseException e) {
			return false;
		}
	}

}
