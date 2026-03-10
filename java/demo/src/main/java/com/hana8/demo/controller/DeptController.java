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

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/depts")
@RequiredArgsConstructor
public class DeptController {
	private final DeptService service;

	@GetMapping("")
	List<DeptDTO> getDepts() {
		return service.getDepts();
	}

	@GetMapping("/{id}")
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
