package com.hana8.demo.dto;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString(callSuper = true)
public class PostDTO {
	@NotNull(groups = MemberDTO.OnUpdate.class, message = "수정할 멤버의 id를 입력하세요!")
	private Long id;

	@NotBlank
	private String title;

	@NotBlank
	private String writer;

	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;

	@JsonManagedReference
	private PostBodyDTO body;

	@JsonManagedReference
	private List<ReplyDTO> replies = new ArrayList<>();

	public interface OnCreate {
	}

	public interface OnUpdate {
	}
}
