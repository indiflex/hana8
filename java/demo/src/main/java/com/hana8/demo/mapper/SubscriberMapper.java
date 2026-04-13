package com.hana8.demo.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.hana8.demo.dto.SubscriberDTO;
import com.hana8.demo.entity.Subscriber;

@Mapper(componentModel = "spring")
public interface SubscriberMapper {
	@Mapping(target = "roleNames", expression = "java(subscriber.getRoles().stream().map(Enum::name).toList())")
	@Mapping(target = "authorities", ignore = true)
	@Mapping(target = "claims", ignore = true)
	SubscriberDTO toDTO(Subscriber subscriber);

	@Mapping(target = "roles", ignore = true)
	Subscriber toEntity(SubscriberDTO dto);
}
