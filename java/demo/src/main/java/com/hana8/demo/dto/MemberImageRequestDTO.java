package com.hana8.demo.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.constraints.NotEmpty;
import lombok.Data;

@Data
public class MemberImageRequestDTO {
	Long memberId;

	@NotEmpty
	List<MultipartFile> files;

	@NotEmpty
	List<String> remarks;
}
