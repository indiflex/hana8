package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.Member;

public interface MemberRepository extends JpaRepository<Member, Long> {
}
