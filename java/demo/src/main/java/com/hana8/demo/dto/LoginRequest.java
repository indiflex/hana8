package com.hana8.demo.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record LoginRequest(
	@NotBlank(message = "사용자이름은 필수입니다!")
	@Size(min = 1, max = 30)
	@Schema(description = "사용자명", example = "sample@gmail.com")
	@NotBlank String username,

	@Schema(description = "비밀번호", example = "pwd00")
	@NotBlank String password
) {
}
