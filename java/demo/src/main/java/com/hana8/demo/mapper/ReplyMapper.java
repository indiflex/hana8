package com.hana8.demo.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.hana8.demo.dto.ReplyDTO;
import com.hana8.demo.entity.Reply;

@Mapper(componentModel = "spring")
public interface ReplyMapper {
	// @Mapping(source = "nickname", target = "username")
	@Mapping(target = "postId", source = "post.id")
	ReplyDTO toDTO(Reply reply);

	@Mapping(target = "post", ignore = true)
	Reply toEntity(ReplyDTO dto);

	List<ReplyDTO> toDTOList(List<Reply> replies);
}
