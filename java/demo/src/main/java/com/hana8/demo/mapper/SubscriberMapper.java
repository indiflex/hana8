package com.hana8.demo.mapper;

import org.mapstruct.Mapper;

import com.hana8.demo.dto.SubscriberDTO;
import com.hana8.demo.entity.Subscriber;

@Mapper(componentModel = "spring")
public interface SubscriberMapper {
	// @Mapping(target = "hashtags", ignore = true)
	SubscriberDTO toDTO(Subscriber subscriber);

	Subscriber toEntity(SubscriberDTO dto);
}
