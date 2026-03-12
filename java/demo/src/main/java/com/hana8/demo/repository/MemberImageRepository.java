package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.MemberImage;

public interface MemberImageRepository extends JpaRepository<MemberImage, Long> {

}
