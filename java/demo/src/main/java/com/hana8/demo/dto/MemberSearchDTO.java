package com.hana8.demo.dto;

import lombok.Data;

@Data
public class MemberSearchDTO {
	private Boolean isActive;

	private String nickname;

	private String datetime;

	private String bloodType;
}
