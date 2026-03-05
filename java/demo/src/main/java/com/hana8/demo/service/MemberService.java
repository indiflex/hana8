package com.hana8.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.entity.Member;
import com.hana8.demo.mapper.MyMemberMapper;
import com.hana8.demo.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	private final MemberRepository repository;
	private final MyMemberMapper mapper;

	public List<MemberDTO> getMemers() {
		List<Member> members = repository.findAll();

		return members.stream().map(mapper::toDTO).toList();
	}

	public MemberDTO getMember(Long id) {
		Member member = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Member #%d is not found!".formatted(id)));

		return mapper.toDTO(member);
	}
}
