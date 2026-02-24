package com.hana8.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class User {
	private int id;
	private String username;
	private String email;
	private String tel;
}
