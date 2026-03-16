package com.hana8.demo.service;

import java.util.List;
import java.util.Objects;

import org.springframework.stereotype.Service;

import com.hana8.demo.dto.DeptDTO;
import com.hana8.demo.entity.Dept;
import com.hana8.demo.entity.Member;
import com.hana8.demo.mapper.DeptMapper;
import com.hana8.demo.mapper.MemberMapper;
import com.hana8.demo.repository.DeptRepository;
import com.hana8.demo.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class DeptService {
	private final DeptRepository repository;
	private final MemberRepository dept;

	private final DeptMapper mapper;
	private final MemberMapper memberMapper;
	private final MemberRepository memberRepository;

	public List<DeptDTO> getDepts() {
		return mapper.toDTOList(repository.findAll());
	}

	public DeptDTO getDept(Integer id) {
		Dept dept = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Dept #%d is not found!".formatted(id)));

		DeptDTO dto = mapper.toDTO(dept);
		dto.setDeptMembers(memberMapper.toDTOList(dept.getDeptMembers()));
		return dto;
	}

	public DeptDTO registDept(DeptDTO dto) {
		Dept dept = mapper.toEntity(dto);
		if (dto.getCaptain() != null) {
			Member captain = memberRepository.findById(dto.getCaptain().getId()).orElse(null);
			dept.setCaptain(captain);
		}

		List<Member> members = dto.getDeptMembers().stream().map(m ->
			memberRepository.findById(m.getId())
				.orElseThrow(() -> new IllegalArgumentException("Member is not found!"))
		).toList();
		dept.setDeptMembers(members);

		DeptDTO deptDTO = mapper.toDTO(repository.save(dept));
		deptDTO.setDeptMembers(memberMapper.toDTOList(members));
		return deptDTO;
	}

	public DeptDTO editDept(DeptDTO dto) {
		Dept oldDept = repository.findById(dto.getId())
			.orElseThrow(() -> new IllegalArgumentException("Dept #%d is not found!".formatted(dto.getId())));

		oldDept.setName(dto.getName());

		if (!Objects.equals(oldDept.getCaptain().getId(), dto.getCaptain().getId())) {
			oldDept.setCaptain(memberRepository.findById(dto.getCaptain().getId()).orElse(null));
		}

		oldDept.getDeptMembers().clear();
		dto.getDeptMembers().forEach(m -> {
			Member member = memberRepository.findById(m.getId())
				.orElseThrow(() -> new IllegalArgumentException("Member is not found!"));
			oldDept.addMember(member);
		});
		// oldDept.setDeptMembers(members);

		DeptDTO deptDTO = mapper.toDTO(repository.save(oldDept));
		deptDTO.setDeptMembers(memberMapper.toDTOList(oldDept.getDeptMembers()));
		return deptDTO;
	}

	public int removeDept(Integer id) {
		Dept oldDept = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Dept #%d is not found!".formatted(id)));

		return repository.deleteByDeptId(id);
	}

}
