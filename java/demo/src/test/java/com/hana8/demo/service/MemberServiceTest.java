package com.hana8.demo.service;

import com.hana8.demo.common.enums.BloodType;
import com.hana8.demo.dto.MemberDTO;
import com.hana8.demo.dto.MemberSearchDTO;
import com.hana8.demo.entity.Member;
import com.hana8.demo.entity.QMember;
import com.hana8.demo.mapper.MemberMapper;
import com.hana8.demo.repository.MemberRepository;
import com.querydsl.core.BooleanBuilder;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.stream.StreamSupport;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

@SpringBootTest
@Transactional
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class MemberServiceTest {
    private static final MemberDTO memberDTO = MemberDTO.builder()
            .nickname("guest")
            .email("guest@gmail.com")
            .bloodType(BloodType.B)
            .isActive(true)
            .build();

    @Autowired
    MemberService service;

    @Autowired
    MemberRepository repository;

    @Autowired
    MemberMapper mapper;

    @Test
    void getMemers() {
        List<MemberDTO> dtos = service.getMemers();
        List<Member> members = repository.findAll();
        assertThat(dtos)
                .hasSize(members.size())
                .extracting(MemberDTO::getNickname).containsExactlyElementsOf(members.stream().map(Member::getNickname).toList());
    }

    @Test
    void searchMembers() {
        MemberSearchDTO dto = new MemberSearchDTO();
        dto.setIsActive(true);
        dto.setBloodType("B");
        dto.setNickname(memberDTO.getNickname());
        dto.setDatetime("2026-03-01 12:22");
        List<MemberDTO> dtos = service.searchMembers(dto);

        QMember member = QMember.member;
        BooleanBuilder bb = new BooleanBuilder();
        bb.and(member.isActive.eq(dto.getIsActive()));
        bb.and(member.bloodType.stringValue().eq(dto.getBloodType()));
        bb.and(member.nickname.contains(dto.getNickname()));
        bb.and(member.updatedAt.after(
                dto.parseDatetime()
        ));
        List<Member> members = StreamSupport.stream(repository.findAll(bb).spliterator(), false)
                .toList();
        assertThat(dtos)
                .hasSize(members.size())
                .extracting(MemberDTO::getNickname).containsExactlyElementsOf(members.stream().map(Member::getNickname).toList());
    }

    @Test
    void getMember() {
        Member member = repository.findById(1L).orElseThrow();
        assertThat(service.getMember(1L)).extracting(MemberDTO::getNickname).isEqualTo(member.getNickname());
    }

    @Test
    @Order(1)
    void registMember() {
        MemberDTO dto = service.registMember(memberDTO);
        Member member = repository.findByEmail(dto.getEmail()).orElseThrow();
        assertThat(dto).usingRecursiveComparison().ignoringFields("createdAt", "updatedAt", "posts", "replyCount", "captainDepts").isEqualTo(member);
    }

    @Test
    @Order(2)
    void editMember() {
        memberDTO.setId(9999999999L);
        assertThatThrownBy(() -> service.editMember(memberDTO)).isInstanceOf(IllegalArgumentException.class).hasMessageContaining("not found!");

        memberDTO.setId(1L);
        memberDTO.setEmail("xxxx@gmail.commmm");
        MemberDTO dto = service.editMember(memberDTO);

        Member member = repository.findById(memberDTO.getId()).orElseThrow();
        assertThat(dto).usingRecursiveComparison().ignoringFields("posts", "replyCount", "captainDepts", "memberImages").isEqualTo(member);
    }

    @Test
    void withdrawMember() {
    }

    @Test
    void registImages() {
    }

    @Test
    void deleteImage() {
    }
}
