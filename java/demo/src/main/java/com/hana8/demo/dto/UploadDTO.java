package com.hana8.demo.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class UploadDTO {
	@NotEmpty
	List<MultipartFile> files;

	@Size(min = 0, max = 30)
	String nickname;
}
