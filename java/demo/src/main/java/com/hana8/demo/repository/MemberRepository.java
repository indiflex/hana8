package com.hana8.demo.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.User;

public interface MemberRepository extends JpaRepository<User, Long> {
	User queryByEmail(String email);

	List<User> findBySalhourIsBetween(BigDecimal salhour, BigDecimal salhour2);
}
