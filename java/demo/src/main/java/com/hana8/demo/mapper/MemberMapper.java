package com.hana8.demo.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.entity.Member;

@Mapper(componentModel = "spring")
public interface MemberMapper {
	// @Mapping(source = "nickname", target = "username")
	@Mapping(target = "passwd", ignore = true)
	MemberDTO toDTO(Member member);

	Member toEntity(MemberDTO dto);
}
