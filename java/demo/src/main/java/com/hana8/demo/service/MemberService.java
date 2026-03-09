package com.hana8.demo.service;

import java.util.List;
import java.util.stream.StreamSupport;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.dto.MemberSearchDTO;
import com.hana8.demo.entity.Member;
import com.hana8.demo.entity.QMember;
import com.hana8.demo.mapper.MemberMapper;
import com.hana8.demo.mapper.PostMapper;
import com.hana8.demo.repository.MemberRepository;
import com.hana8.demo.repository.PostRepository;
import com.hana8.demo.repository.ReplyRepository;
import com.querydsl.core.BooleanBuilder;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	private final MemberRepository repository;
	private final PostRepository postRepository;
	private final ReplyRepository replyRepository;

	// private final MyMemberMapper mapper;
	private final MemberMapper mapper;
	private final PostMapper postMapper;

	public List<MemberDTO> getMemers() {
		List<Member> members = repository.findAll();

		return members.stream().map(mapper::toDTO).toList();
	}

	public List<MemberDTO> searchMembers(MemberSearchDTO dto) {
		System.out.println("dto = " + dto);
		QMember member = QMember.member;

		BooleanBuilder bb = new BooleanBuilder();

		if (dto.getIsActive() != null)
			bb.and(member.isActive.eq(dto.getIsActive()));

		if (StringUtils.hasText(dto.getBloodType()))
			bb.and(member.bloodType.stringValue().eq(dto.getBloodType()));

		if (StringUtils.hasText(dto.getNickname()))
			bb.and(member.nickname.contains(dto.getNickname()));

		if (StringUtils.hasText(dto.getDatetime())) {
			bb.and(member.updatedAt.after(
				dto.parseDatetime()
			));
		}

		// List<Member> data = (List<Member>)repository.findAll(bb));
		// return data.stream().map(mapper::toDTO).toList();

		return StreamSupport.stream(repository.findAll(bb).spliterator(), false)
			.map(mapper::toDTO)
			.toList();
	}

	public MemberDTO getMember(Long id) {
		Member member = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Member #%d is not found!".formatted(id)));

		MemberDTO dto = mapper.toDTO(member);
		dto.setPosts(postRepository.findByWriterId(id).stream().map(postMapper::toDTO).toList());
		dto.setReplyCount(replyRepository.countByReplierId(id));
		return dto;
	}

	public MemberDTO registMember(MemberDTO member) {
		return mapper.toDTO(repository.save(mapper.toEntity(member)));
	}

	public MemberDTO editMember(MemberDTO member) {
		Member oldMember = repository.findById(member.getId())
			.orElseThrow(() -> new IllegalArgumentException("Member #%d is not found!".formatted(member.getId())));

		oldMember.setEmail(member.getEmail());
		oldMember.setNickname(member.getNickname());
		oldMember.setIsActive(member.getIsActive());
		oldMember.setBloodType(member.getBloodType());
		oldMember.setPasswd(member.getPasswd());

		return mapper.toDTO(repository.save(oldMember));
	}

	public int withdrawMember(Long id) {
		Member oldMember = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Member #%d is not found!".formatted(id)));

		repository.deleteById(id);
		return 1;
	}

}
