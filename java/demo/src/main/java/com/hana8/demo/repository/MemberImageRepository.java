package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.hana8.demo.entity.MemberImage;

import jakarta.transaction.Transactional;

public interface MemberImageRepository extends JpaRepository<MemberImage, Long> {
	@Query("delete from MemberImage where id = :id")
	@Transactional
	@Modifying
	int deleteByImageId(Long id);
}
