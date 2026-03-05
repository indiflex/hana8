package com.hana8.demo.mapper;

import org.mapstruct.Mapper;

import com.hana8.demo.dto.PostDTO;
import com.hana8.demo.entity.Post;

@Mapper(componentModel = "spring")
public interface PostMapper {
	// @Mapping(source = "nickname", target = "username")
	// @Mapping(target = "passwd", ignore = true)
	PostDTO toDTO(Post post);

	Post toEntity(PostDTO dto);
}
