package com.hana8.demo.post;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class PostDTO {
	@NotNull(groups = OnUpdate.class)
	private Long id;

	@NotBlank(message = "제목은 필수값입니다!")
	private String title;

	@NotNull
	@Pattern(regexp = "^[A-Za-z]+")
	@Size(min = 3, max = 30)
	private String writer;

	private String body;

	public interface OnCreate {
	}

	public interface OnUpdate {
	}
}
