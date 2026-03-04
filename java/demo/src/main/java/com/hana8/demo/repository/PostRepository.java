package com.hana8.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hana8.demo.entity.Post;

public interface PostRepository extends JpaRepository<Post, Long> {
	List<Post> findByTitleStartingWith(String title);

	List<Post> findByIdBetween(long l, long l1);

	@Query("select p from Post p where p.id between :start and :end order by p.id desc")
	List<Post> findByAny(@Param("start") int s, @Param("end") int e);

	@Query("select p.createdAt, p.title from Post p where p.id between :start and :end order by p.createdAt desc, p.title")
	List<Object[]> sortByCreatedAtAndTitle(@Param("start") int s, @Param("end") int e);
}
