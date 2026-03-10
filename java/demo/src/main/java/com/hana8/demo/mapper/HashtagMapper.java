package com.hana8.demo.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.hana8.demo.dto.HashtagDTO;
import com.hana8.demo.entity.Hashtag;

@Mapper(componentModel = "spring")
public interface HashtagMapper {
	HashtagDTO toDTO(Hashtag hashtag);

	@Mapping(target = "hashtagPosts", ignore = true)
	Hashtag toEntity(HashtagDTO dto);
}
