package com.hana8.demo.mapper;

import org.springframework.stereotype.Component;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.entity.Member;

@Component
public class MyMemberMapper {
	public MemberDTO toDTO(Member m) {
		return MemberDTO.builder()
			.id(m.getId())
			.nickname(m.getNickname())
			.email(m.getEmail())
			.bloodType(m.getBloodType())
			.isActive(m.isActive())
			.createdAt(m.getCreatedAt())
			.updatedAt(m.getUpdatedAt())
			.build();
	}

	public Member toEntity(MemberDTO dto) {
		return Member.builder()
			.id(dto.getId())
			.nickname(dto.getNickname())
			.email(dto.getEmail())
			.bloodType(dto.getBloodType())
			.isActive(dto.getIsActive())
			.build();
	}
}
