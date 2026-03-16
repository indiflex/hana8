package com.hana8.demo.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import com.hana8.demo.dto.DeptDTO;
import com.hana8.demo.dto.MemberDTO;

import tools.jackson.databind.JsonNode;
import tools.jackson.databind.ObjectMapper;

@SpringBootTest
@AutoConfigureMockMvc
// @Transactional
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class DeptControllerTest {
	private final DeptDTO dto = DeptDTO.builder()
		.name("HR")
		.captain(MemberDTO.builder().id(1L).build())
		.build();

	@Autowired
	MockMvc mvc;

	@Autowired
	ObjectMapper objectMapper;

	private int newerId;

	@Test
	@Order(1)
	void getDeptsTest() throws Exception {
		mvc.perform(get("/api/depts"))
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(status().isOk())
			.andDo(print());
	}

	@Test
	@Order(2)
	void registDeptTest() throws Exception {

		MvcResult result = mvc.perform(post("/api/depts")
				.contentType(MediaType.APPLICATION_JSON)
				.content(objectMapper.writeValueAsString(dto))
			)
			.andExpect(status().isOk())
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(jsonPath("$.id").exists())
			.andExpect(jsonPath("$.name").value(dto.getName()))
			.andExpect(jsonPath("$.captain.id").value(dto.getCaptain().getId()))
			.andDo(print())
			.andReturn();

		JsonNode node = objectMapper.readTree(result.getResponse().getContentAsString());

		newerId = node.get("id").asInt();
	}

	@Test
	@Order(3)
	void getDeptTest() throws Exception {
		mvc.perform(get("/api/depts/" + newerId))
			.andExpect(status().isOk())
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(jsonPath("$.id").value(newerId))
			.andExpect(jsonPath("$.name").value(dto.getName()))
			.andExpect(jsonPath("$.captain.id").value(dto.getCaptain().getId()))
			.andDo(print());
	}

	@Test
	@Order(4)
	void editDeptTest() throws Exception {
		String nameToUpdate = "Design";
		dto.setName(nameToUpdate);
		dto.setId(newerId);

		mvc.perform(put("/api/depts/" + newerId)
				.contentType(MediaType.APPLICATION_JSON)
				.content(objectMapper.writeValueAsString(dto)))
			.andExpect(status().isOk())
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(jsonPath("$.id").value(newerId))
			.andExpect(jsonPath("$.name").value(nameToUpdate))
			.andExpect(jsonPath("$.captain.id").value(dto.getCaptain().getId()))
			.andDo(print());
	}

	@Test
	@Order(5)
	void removeDeptTest() throws Exception {
		mvc.perform(delete("/api/depts/" + newerId))
			.andExpect(status().isOk())
			.andExpect(content().string("1"))
			.andDo(print());
	}
}
