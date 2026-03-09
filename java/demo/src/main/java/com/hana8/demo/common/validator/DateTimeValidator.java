package com.hana8.demo.common.validator;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class DateTimeValidator implements ConstraintValidator<DateTime, String> {
	private DateTimeFormatter formatter;
	private boolean isLocalDate = false;

	@Override
	public void initialize(DateTime annotation) {
		String fmt = annotation.value();
		this.isLocalDate = fmt.length() <= 10;
		this.formatter = DateTimeFormatter.ofPattern(fmt);
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext ctx) {
		if (value == null || value.isBlank())
			return true;

		try {
			if (this.isLocalDate)
				LocalDate.parse(value, this.formatter);
			else
				LocalDateTime.parse(value, this.formatter);

			return true;
		} catch (DateTimeParseException e) {
			e.printStackTrace(System.out);
			log.info("DateTime parseError = {}", e.getMessage());
			return false;
		}
	}

}
