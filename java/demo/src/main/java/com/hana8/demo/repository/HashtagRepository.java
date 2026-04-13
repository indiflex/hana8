package com.hana8.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana8.demo.entity.Hashtag;

import jakarta.validation.constraints.NotBlank;

public interface HashtagRepository extends JpaRepository<Hashtag, Long> {
	Optional<Hashtag> findByTag(@NotBlank String tag);

	// @Query("select h from Hashtag h join hashtagPosts p on h.id = p.hashtag where h.id = :id")
	// List<Hashtag> findByHashtagId(@Param("id") Long id);
}
