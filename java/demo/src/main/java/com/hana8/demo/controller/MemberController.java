package com.hana8.demo.controller;

import java.util.List;

import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.dto.MemberImageRequestDTO;
import com.hana8.demo.dto.MemberSearchDTO;
import com.hana8.demo.dto.UploadDTO;
import com.hana8.demo.service.FileService;
import com.hana8.demo.service.MemberService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/members")
@RequiredArgsConstructor
public class MemberController {
	private final MemberService service;
	private final FileService fileService;

	@GetMapping("")
	@PreAuthorize("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')")
	List<MemberDTO> getMembers() {
		return service.getMemers();
	}

	@GetMapping("/search")
	List<MemberDTO> searchMembers(@Valid MemberSearchDTO dto) {
		return service.searchMembers(dto);
	}

	@GetMapping("/{id}")
	@PreAuthorize("hasAnyRole('ROLE_MANAGER', 'ROLE_ADMIN')")
	MemberDTO getMember(@PathVariable Long id) {
		return service.getMember(id);
	}

	@PostMapping("")
	MemberDTO registMember(@Validated(MemberDTO.OnCreate.class) @RequestBody MemberDTO member) {
		return service.registMember(member);
	}

	@PutMapping("/{id}")
	MemberDTO editMember(@PathVariable Long id, @Validated(MemberDTO.OnUpdate.class) @RequestBody MemberDTO member) {
		member.setId(id);
		return service.editMember(member);
	}

	@DeleteMapping("/{id}")
	int withdrawMember(@PathVariable Long id) {
		return service.withdrawMember(id);
	}

	@PostMapping(value = "/files/upload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	ResponseEntity<String> uploadFile(@RequestParam MultipartFile file) {
		return ResponseEntity.ok(fileService.upload(file));
	}

	@PostMapping(value = "/files/secure/upload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	ResponseEntity<String> uploadSecureFile(@RequestParam MultipartFile file) {
		return ResponseEntity.ok(fileService.upload(file, true));
	}

	@PostMapping(value = "/files/upload/multiple", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	ResponseEntity<List<String>> uploadMultiple(@Valid UploadDTO dto) {
		List<String> list = dto.getFiles().stream().map(fileService::upload).toList();
		return ResponseEntity.ok(list);
	}

	@GetMapping("/files/download/{filename}")
	ResponseEntity<Resource> download(@PathVariable String filename,
		@RequestParam(defaultValue = "false") boolean inline, boolean isSecure) {
		if (isSecure) {
			// Todo check the file owner or administrator
			System.out.println("isSecure = " + filename + "?isSecure=true");
		}
		return fileService.download(filename, inline, isSecure);
	}

	@DeleteMapping("/files/delete/{filename}")
	ResponseEntity<Void> deleteFile(@PathVariable String filename) {
		// Todo check the authentication

		fileService.delete(filename);
		return ResponseEntity.ok().build();
	}

	@PostMapping(path = "/{memberId}/images", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	ResponseEntity<?> registImages(@PathVariable Long memberId,
		@Valid() @ModelAttribute MemberImageRequestDTO requestDTO) {
		requestDTO.setMemberId(memberId);
		try {
			return ResponseEntity.ok(service.registImages(requestDTO));
		} catch (IllegalArgumentException e) {
			return ResponseEntity.status(404).body(e.getMessage());
		}
	}

	@DeleteMapping("/{memberId}/images/{id}")
	int deleteMemberImage(@PathVariable Long memberId, @PathVariable Long id) {
		return service.deleteImage(id);
	}
}
