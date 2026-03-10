package com.hana8.demo.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import com.hana8.demo.dto.DeptDTO;
import com.hana8.demo.dto.MemberDTO;

import tools.jackson.databind.ObjectMapper;

@SpringBootTest
@AutoConfigureMockMvc
class DeptControllerTest {
	@Autowired
	MockMvc mvc;

	@Autowired
	ObjectMapper objectMapper;

	@Test
	void getDeptsTest() throws Exception {
		mvc.perform(get("/api/depts"))
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(status().isOk())
			.andDo(print());
	}

	@Test
	void registDeptTest() throws Exception {
		DeptDTO dto = DeptDTO.builder()
			.name("HR")
			.captain(MemberDTO.builder().id(1L).build())
			.build();

		mvc.perform(post("/api/depts")
				.contentType(MediaType.APPLICATION_JSON)
				.content(objectMapper.writeValueAsString(dto))
			)
			.andExpect(status().isOk())
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(jsonPath("$.id").exists())
			.andExpect(jsonPath("$.name").value(dto.getName()))
			.andExpect(jsonPath("$.captain.id").value(dto.getCaptain().getId()))
			.andDo(print());
	}

	@Test
	void getDeptTest() throws Exception {

	}

	@Test
	void editDeptTest() throws Exception {

	}

	@Test
	void removeDeptTest() throws Exception {

	}
}
