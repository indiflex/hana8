package com.hana8.demo.post;

import lombok.Data;

@Data
public class Post {
	private Long id;
	private String title;
	private String body;
	private String writer;
}
