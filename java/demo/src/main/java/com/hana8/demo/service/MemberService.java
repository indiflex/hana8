package com.hana8.demo.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.StreamSupport;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.dto.MemberImageDTO;
import com.hana8.demo.dto.MemberImageRequestDTO;
import com.hana8.demo.dto.MemberSearchDTO;
import com.hana8.demo.entity.Member;
import com.hana8.demo.entity.MemberImage;
import com.hana8.demo.entity.QMember;
import com.hana8.demo.mapper.DeptMapper;
import com.hana8.demo.mapper.MemberMapper;
import com.hana8.demo.mapper.PostMapper;
import com.hana8.demo.repository.DeptRepository;
import com.hana8.demo.repository.MemberImageRepository;
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
	private final DeptRepository deptRepository;
	private final MemberImageRepository imageRepository;

	// private final MyMemberMapper mapper;
	private final MemberMapper mapper;
	private final PostMapper postMapper;
	private final DeptMapper deptMapper;

	private final FileService fileService;

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

		dto.setCaptainDepts(deptMapper.toDTOList(deptRepository.findByCaptainId(id)));
		dto.setDepts(deptMapper.toDTOList(deptRepository.findByMemberId(id)));
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

	public List<MemberImageDTO> registImages(MemberImageRequestDTO requestDTO) {
		List<String> orgNames = requestDTO.getFiles().stream().map(MultipartFile::getOriginalFilename).toList();

		String todayPath = getTodayPath();
		List<String> saveNames = requestDTO.getFiles().stream().map(f -> fileService.upload(f, todayPath)).toList();

		Member member = repository.findById(requestDTO.getMemberId())
			.orElseThrow(() -> new IllegalArgumentException("Member not found!"));

		List<MemberImage> images = new ArrayList<>();
		for (int i = 0; i < requestDTO.getFiles().size(); i++) {
			images.add(imageRepository.save(MemberImage.builder()
				.member(member)
				.orgname(orgNames.get(i))
				.savedir(todayPath)
				.savename(saveNames.get(i))
				.remark(requestDTO.getRemarks().get(i))
				.build()));
		}

		return mapper.toImageDTOList(images);
	}

	public int deleteImage(Long id) {
		MemberImage oldImage = imageRepository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("MemberImage not found!"));
		fileService.delete(oldImage.getSavename(), oldImage.getSavedir());
		return imageRepository.deleteByImageId(id);
	}

	private String getTodayPath() {
		LocalDateTime now = LocalDateTime.now();
		return String.format("%4d/%02d/%02d", now.getYear(),
			now.getMonthValue(), now.getDayOfMonth());
	}

}
