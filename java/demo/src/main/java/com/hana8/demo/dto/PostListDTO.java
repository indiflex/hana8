package com.hana8.demo.dto;

import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class PostListDTO {
	private Integer page;

	@Size(min = 1, max = 100)
	private Integer pageSize;

	public PostListDTO() {
		this.page = 1;
		this.pageSize = 10;
	}
}
