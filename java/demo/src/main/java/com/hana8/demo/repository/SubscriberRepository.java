package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hana8.demo.entity.Subscriber;

public interface SubscriberRepository extends JpaRepository<Subscriber, String> {
	@EntityGraph(attributePaths = {"roles"})
	@Query("select s from Subscriber s where email = :email")
	public Subscriber getWithRoles(@Param("email") String email);
}
