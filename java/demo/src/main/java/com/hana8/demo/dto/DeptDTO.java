package com.hana8.demo.dto;

import java.util.ArrayList;
import java.util.List;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DeptDTO {
	private Integer id;

	@NotBlank
	private String name;

	private MemberDTO captain;

	@Builder.Default
	private List<MemberDTO> deptMembers = new ArrayList<>();

	private Integer memberCount;
}
