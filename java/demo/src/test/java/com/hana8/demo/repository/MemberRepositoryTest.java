package com.hana8.demo.repository;

import static org.assertj.core.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hana8.demo.common.enums.BloodType;
import com.hana8.demo.entity.Member;

class MemberRepositoryTest extends BaseRepositoryTest {
	private static long id;
	private static long orgCount = 0;

	private final Member newMember = Member.builder()
		.email("tester1@gmail.com")
		.nickname("tester1")
		.bloodType(BloodType.O)
		.isActive(true)
		.build();

	@Autowired
	private MemberRepository repository;

	@BeforeEach
	void setOrgCount() {
		if (orgCount == 0)
			orgCount = repository.count();
	}

	@Test
	@Order(1)
	void writeTest() {
		Member savedMember = repository.save(newMember);

		assertThat(savedMember).usingRecursiveComparison()
			.ignoringFields("id", "createdAt", "updatedAt")
			.isEqualTo(newMember);

		Member foundMember = repository.findById(savedMember.getId()).orElseThrow();
		assertThat(savedMember).isEqualTo(foundMember);

		id = savedMember.getId();
		System.out.println("foundMember = " + foundMember);
		System.out.println("this.id00000 = " + id);
	}

	@Test
	@Order(2)
	void readTest() {
		List<Member> all = repository.findAll();
		System.out.println("all = " + all);
		long cnt = repository.count();
		assertThat(cnt).isEqualTo(all.size());

		Member m = all.get((int)(cnt - 1));
		assertThat(m).usingRecursiveComparison()
			.ignoringFields("id", "createdAt", "updatedAt")
			.isEqualTo(newMember);
	}

	@Test
	@Order(3)
	void updateTest() {
		Member member = repository.findById(id).orElseThrow();
		member.setNickname(member.getNickname() + "xxx");
		repository.save(member);
	}

	@Test
	@Order(4)
	void deleteTest() {
		Member member = repository.findById(id).orElseThrow();
		assertThat(member.getNickname())
			.isEqualTo(newMember.getNickname() + "xxx");

		repository.deleteById(id);
	}

	@Test
	@Order(5)
	void finalCheck() {
		assertThat(repository.count()).isEqualTo(orgCount);
	}

}
