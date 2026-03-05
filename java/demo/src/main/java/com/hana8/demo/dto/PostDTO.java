package com.hana8.demo.dto;

import java.time.LocalDateTime;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PostDTO {
	@NotNull(groups = MemberDTO.OnUpdate.class, message = "수정할 멤버의 id를 입력하세요!")
	private Long id;

	@NotBlank
	private String title;

	private String body;

	@NotBlank
	private String writer;

	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;

	public interface OnCreate {
	}

	public interface OnUpdate {
	}
}
