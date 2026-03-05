package com.hana8.demo.controller;

import java.util.List;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.dto.MemberSearchDTO;
import com.hana8.demo.service.MemberService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/members")
@RequiredArgsConstructor
public class MemberController {
	private final MemberService service;

	@GetMapping("")
	List<MemberDTO> getMembers() {
		return service.getMemers();
	}

	@GetMapping("/search")
	List<MemberDTO> searchMembers(@Valid MemberSearchDTO dto) {
		return service.searchMembers(dto);
	}

	@GetMapping("/{id}")
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
}
