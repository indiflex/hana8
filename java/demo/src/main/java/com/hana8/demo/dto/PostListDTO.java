package com.hana8.demo.dto;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.hana8.demo.common.validator.DateTime;

import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class PostListDTO {
	private static final String fmt = "yyyy-MM-dd";
	private Integer page;
	@Size(min = 1, max = 100)
	private Integer pageSize;

	private String title;
	private String body;
	private String writer;

	@DateTime(fmt)
	private String writedate;

	public PostListDTO() {
		this.page = 1;
		this.pageSize = 10;
	}

	public LocalDate parseWritedate() {
		return LocalDate.parse(this.writedate, DateTimeFormatter.ofPattern(fmt));
	}
}
