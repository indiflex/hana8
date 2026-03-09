package com.hana8.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hana8.demo.entity.Reply;

import jakarta.transaction.Transactional;

public interface ReplyRepository extends JpaRepository<Reply, Long> {
	List<Reply> findAllByPostId(Long postId);

	@Query("delete from Reply where id = :id")
	@Transactional
	@Modifying
	int deleteByReplyId(@Param("id") Long id);
}
