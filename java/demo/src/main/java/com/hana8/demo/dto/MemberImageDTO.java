package com.hana8.demo.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberImageDTO {
	private Integer id;

	@NotBlank
	private String orgname;
	private String savename;
	private String savedir;
	private String remark;
}
