package com.hana8.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReplyDTO {
	private Long id;

	private String reply;
	private String replier;

	private Long postId;

	// @JsonBackReference
	// private PostDTO post;
}
