package com.hana8.demo.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.hana8.demo.common.validator.DateTime;

import lombok.Data;

@Data
public class MemberSearchDTO {
	private static final String fmt = "yyyy-MM-dd HH:mm";

	private Boolean isActive;

	private String nickname;

	@DateTime(fmt)
	private String datetime;

	private String bloodType;

	public LocalDateTime parseDatetime() {
		return LocalDateTime.parse(this.datetime, DateTimeFormatter.ofPattern(fmt));
	}
}
