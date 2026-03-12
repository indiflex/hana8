package com.hana8.demo.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.dto.MemberImageDTO;
import com.hana8.demo.entity.Member;
import com.hana8.demo.entity.MemberImage;

@Mapper(componentModel = "spring")
public interface MemberMapper {
	@Mapping(target = "passwd", ignore = true)
	@Mapping(target = "posts", ignore = true)
	@Mapping(target = "replyCount", ignore = true)
	@Mapping(target = "captainDepts", ignore = true)
	@Mapping(target = "depts", ignore = true)
	MemberDTO toDTO(Member member);

	Member toEntity(MemberDTO dto);

	List<MemberDTO> toDTOList(List<Member> members);

	List<Member> toEntityList(List<MemberDTO> members);

	List<MemberImageDTO> toImageDTOList(List<MemberImage> images);
}
