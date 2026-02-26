package com.hana8.demo.post;

import lombok.Data;

@Data
public class PostAddDTO {
	private String title;
	private String body;
	private String writer;
}
