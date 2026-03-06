package com.hana8.demo.mapper;

import org.mapstruct.Mapper;

import com.hana8.demo.dto.PostBodyDTO;
import com.hana8.demo.entity.PostBody;

@Mapper(componentModel = "spring")
public interface PostBodyMapper {
	// @Mapping(source = "nickname", target = "username")
	// @Mapping(target = "passwd", ignore = true)
	PostBodyDTO toDTO(PostBody post);

	PostBody toEntity(PostBodyDTO dto);
}
