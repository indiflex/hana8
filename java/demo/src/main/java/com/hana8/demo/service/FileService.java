package com.hana8.demo.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnails;

@Service
public class FileService {
	@Value("${upload.path}")
	private String uploadPath;

	@Value("${upload.secure}")
	private String secureUploadPath;

	public String upload(MultipartFile file) {
		if (file.isEmpty() || file.getOriginalFilename() == null)
			throw new IllegalArgumentException("파일이 비어있습니다.");

		// 원본 파일명
		String originalFilename = file.getOriginalFilename();

		// 확장자 추출
		String ext = originalFilename.substring(
			originalFilename.lastIndexOf("."));

		// UUID로 파일명 중복 방지
		String savedFilename = UUID.randomUUID() + ext;
		// String savedFilename = UUID.randomUUID() + "_" + originalFilename;

		// 저장 경로
		Path savePath = Paths.get(uploadPath, savedFilename);
		Path thumbPath = Paths.get(uploadPath, "thumb_" + savedFilename);
		try {
			// 디렉토리 없으면 생성
			Files.createDirectories(savePath.getParent());

			// 파일 저장
			file.transferTo(savePath);

			String contentType = file.getContentType();
			System.out.println("contentType = " + contentType);
			if (contentType != null && contentType.startsWith(("image/"))) {
				Thumbnails.of(savePath.toFile())
					.size(200, 200)
					.outputQuality(0.8)
					.toFile(thumbPath.toFile());
			}
		} catch (IOException e) {
			throw new RuntimeException("파일 저장 실패", e);
		}
		return savedFilename;
	}
}
