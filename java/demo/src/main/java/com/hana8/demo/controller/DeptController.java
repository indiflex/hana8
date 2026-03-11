package com.hana8.demo.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
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
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
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
	@Parameter(name = "id", description = "부서ID", example = "1")
	@ApiResponses(value = {
		@ApiResponse(responseCode = "200", description = "요청에 성공했습니다",
			content = @Content(mediaType = "application/json")),
		@ApiResponse(responseCode = "404", description = "해당 부서가 없습니다!",
			content = @Content(mediaType = "plain/text"))
	})
	ResponseEntity<?> getDept(@PathVariable Integer id) {
		try {
			return ResponseEntity.ok(service.getDept(id));
		} catch (IllegalArgumentException e) {
			return ResponseEntity.status(404).body(e.getMessage());
		}
	}

	@PostMapping("")
	@Tag(name = "부서 등록")
	@Operation(
		summary = "부서 등록",
		description = "부서명, 부서장, 부서원 목록을 입력받아 부서를 등록합니다."
	)
	@io.swagger.v3.oas.annotations.parameters.RequestBody(
		description = "부서 정보",
		content = @Content(
			mediaType = "application/json",
			examples = @ExampleObject(value = """
				{
				  "name": "Devxxxx",
				  "captain": {
				    "id": 1
				  },
				  "deptMembers": [
				    {
				      "id": 2
				    }
				  ]
				}
				""")
		)
	)
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
