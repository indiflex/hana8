package com.hana8.demo.post;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Posts {
	private Long id;
	private String title;
	private String body;
	private String writer;
}
