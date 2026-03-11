package com.hana8.demo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana8.demo.dto.DeptDTO;
import com.hana8.demo.service.DeptService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/depts")
@RequiredArgsConstructor
@Tag(name = "부서관리", description = "부서 상세에서는 ...")
public class DeptController {
	private final DeptService service;

	@GetMapping("")
	List<DeptDTO> getDepts() {
		return service.getDepts();
	}

	@GetMapping("/{id}")
	@Tag(name = "부서 상세", description = "부서 세부 정보")
	@Operation(summary = "/api/depts/아이디 형식으로 부르세요", description = "부서 id는 Integer입니다!")
	DeptDTO getDept(@PathVariable Integer id) {
		return service.getDept(id);
	}

	@PostMapping("")
	DeptDTO registDept(@Valid() @RequestBody DeptDTO dept) {
		return service.registDept(dept);
	}

	@PutMapping("/{id}")
	DeptDTO editDept(@PathVariable Integer id, @Valid() @RequestBody DeptDTO dept) {
		dept.setId(id);
		return service.editDept(dept);
	}

	@DeleteMapping("/{id}")
	int removeDept(@PathVariable Integer id) {
		return service.removeDept(id);
	}
}
