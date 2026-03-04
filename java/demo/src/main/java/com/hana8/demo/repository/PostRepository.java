package com.hana8.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.Post;

public interface PostRepository extends JpaRepository<Post, Long> {
	List<Post> findByTitleStartingWith(String title);
}
