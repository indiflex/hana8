package com.hana8.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.entity.Member;
import com.hana8.demo.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	private final MemberRepository repository;

	public List<MemberDTO> getMemers() {
		List<Member> members = repository.findAll();
		
		return members.stream().map(m -> MemberDTO.builder()
			.id(m.getId())
			.nickname(m.getNickname())
			.email(m.getEmail())
			.isActive(m.isActive())
			.build()
		).toList();
	}
}
