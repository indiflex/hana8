package com.hana8.demo.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.hana8.demo.dto.DeptDTO;
import com.hana8.demo.entity.Dept;

@Mapper(componentModel = "spring", uses = {MemberMapper.class})
public interface DeptMapper {
	@Mapping(target = "deptMembers", ignore = true)
	@Mapping(target = "memberCount", expression = "java(dept.getDeptMembers().size())")
	DeptDTO toDTO(Dept dept);

	Dept toEntity(DeptDTO dto);

	List<DeptDTO> toDTOList(List<Dept> depts);
}
