package com.hana8.demo.repository;

import static org.assertj.core.api.Assertions.*;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.hana8.demo.entity.Subscriber;
import com.hana8.demo.entity.SubscriberRole;

import jakarta.transaction.Transactional;

@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class SubscriberRepositoryTest {
	@Autowired
	SubscriberRepository repository;
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Test
	@Order(1)
	void addTest() {
		int limit = 5;
		List<Subscriber> roleList = IntStream.rangeClosed(1, limit)
			.mapToObj(n -> Subscriber.builder()
				.email(n + "@gmail.com")
				.nickname("sub" + n)
				.pwd(passwordEncoder.encode("pwd" + n))
				.social(false)
				.build()
				.addRole(SubscriberRole.ROLE_USER)
				.addRole(n > 3 ? SubscriberRole.ROLE_ADMIN : SubscriberRole.ROLE_MANAGER)
			).toList();

		repository.saveAll(roleList);

		assertThat(repository.count()).isEqualTo(limit);
	}

	@Test
	@Order(2)
	void readTest() {
		String email = "1@gmail.com";
		Subscriber subscriber = repository.getWithRoles(email);
		System.out.println("subscriber = " + subscriber);
		System.out.println("subscriber.roles = " + subscriber.getRoles());
		assertThat(subscriber.getEmail()).isEqualTo(email);
		assertThat(subscriber.getRoles()).containsAll(List.of(SubscriberRole.ROLE_USER, SubscriberRole.ROLE_MANAGER));
	}

	@Test
	void passwordEncodingTest() {
		String pwd = "pwd00";
		System.out.println("passwordEncoder.encode(pwd) = " + passwordEncoder.encode(pwd));
	}
}
