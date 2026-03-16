package com.hana8.demo.dto;

import java.util.ArrayList;
import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;
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
	@Schema(description = "부서명", example = "Sales")
	private String name;

	@Schema(description = "부서장", example = "{id: 1}")
	private MemberDTO captain;

	@Builder.Default
	private List<MemberDTO> deptMembers = new ArrayList<>();

	private Integer memberCount;
}
