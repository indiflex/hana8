package com.hana8.demo.service;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.BDDMockito.*;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;

import com.hana8.demo.dto.DeptDTO;
import com.hana8.demo.entity.Dept;
import com.hana8.demo.repository.DeptRepository;

@SpringBootTest
class DeptServiceTest {
	private static final Integer ID = 1;
	private static final Dept dept = Dept.builder()
		.id(1)
		.name("Dev")
		.captain(null)
		.build();

	private static final List<Dept> depts = List.of(
		dept,
		Dept.builder().id(2).name("Sales").build(),
		Dept.builder().id(3).name("HR").build()
	);

	@MockitoBean
	DeptRepository repository;

	@Autowired
	DeptService service;

	@BeforeEach
	void setUp() {
		given(repository.findById(ID)).willReturn(Optional.ofNullable(dept));
		given(repository.findAll()).willReturn(depts);

		// Mockito.when(repository.findAll()).thenReturn(depts);
	}

	@Test
	void getDeptsTest() {
		List<DeptDTO> depts1 = service.getDepts();
		assertThat(depts1).isNotEmpty()
			.filteredOn(d -> d.getCaptain() == null)
			.hasSize(depts.size())
			.extracting(DeptDTO::getName)
			.contains("Sales", "Dev", "HR")
			.doesNotContain("Design");
	}

	@Test
	@DisplayName("Find a dept Test")
	void getDept() {
		DeptDTO dto = service.getDept(ID);
		assertThat(dto)
			.isNotNull()
			.extracting(DeptDTO::getId, DeptDTO::getName)
			.containsExactly(1, dept.getName()); // .usingRecursiveComparison().isEqualTo(dept);

		assertThat(dto).isNotNull().satisfies(d -> {
			assertThat(d.getId()).isEqualTo(dept.getId());
			assertThat(d.getName()).isEqualTo(dept.getName());
		});

		assertThat(dto)
			.hasFieldOrPropertyWithValue("id", ID)
			.hasFieldOrPropertyWithValue("name", dept.getName());

		assertThatThrownBy(() -> service.getDept(99999999))
			.hasMessageContaining("not found");
	}
}
