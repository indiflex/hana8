package com.hana8.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hana8.demo.entity.Dept;

import jakarta.transaction.Transactional;

public interface DeptRepository extends JpaRepository<Dept, Integer> {
	@Query("delete from Dept where id = :id")
	@Transactional
	@Modifying
	int deleteByDeptId(@Param("id") Integer id);
}
