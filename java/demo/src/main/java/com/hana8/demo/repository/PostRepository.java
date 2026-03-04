package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.Post;

public interface PostRepository extends JpaRepository<Post, String> {
}
