package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.PostBody;

public interface PostBodyRepository extends JpaRepository<PostBody, Long> {
}
