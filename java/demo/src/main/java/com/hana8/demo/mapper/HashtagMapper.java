package com.hana8.demo.mapper;

import org.mapstruct.Mapper;

import com.hana8.demo.dto.HashtagDTO;
import com.hana8.demo.entity.Hashtag;

@Mapper(componentModel = "spring")
public interface HashtagMapper {
	HashtagDTO toDTO(Hashtag hashtag);

	Hashtag toEntity(HashtagDTO dto);
}
