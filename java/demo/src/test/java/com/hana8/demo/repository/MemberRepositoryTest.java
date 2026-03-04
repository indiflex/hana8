package com.hana8.demo.repository;

import static org.assertj.core.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.data.jpa.test.autoconfigure.DataJpaTest;
import org.springframework.boot.jdbc.test.autoconfigure.AutoConfigureTestDatabase;
import org.springframework.test.context.ActiveProfiles;

import com.hana8.demo.common.enums.BloodType;
import com.hana8.demo.entity.Member;

@DataJpaTest
@ActiveProfiles("test")
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class MemberRepositoryTest {
	@Autowired
	private MemberRepository repository;

	@Test
	@Order(2)
	void readTest() {
		List<Member> all = repository.findAll();
		System.out.println("all = " + all);
		System.out.println("repository.count() = " + repository.count());
		assertThat(repository.count()).isEqualTo(all.size());
	}

	@Test
	@Order(1)
	void writeTest() {
		Member m = Member.builder()
			.email("tester@mail.com")
			.nickname("tester")
			.bloodType(BloodType.O)
			.isActive(true)
			.build();
		System.out.println("m = " + m);

		Member savedMember = repository.save(m);
		System.out.println("savedMember = " + savedMember);

		assertThat(savedMember.getNickname()).isEqualTo(m.getNickname());
		assertThat(savedMember).usingRecursiveComparison()
			.ignoringFields("id", "createdAt", "updatedAt")
			.isEqualTo(m);
	}
}
