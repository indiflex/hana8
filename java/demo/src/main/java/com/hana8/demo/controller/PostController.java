package com.hana8.demo.controller;

import java.util.List;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana8.demo.dto.PostDTO;
import com.hana8.demo.dto.PostListDTO;
import com.hana8.demo.service.PostService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/posts")
@RequiredArgsConstructor
public class PostController {
	private final PostService service;

	@GetMapping("")
	List<PostDTO> getPosts(PostListDTO dto) {
		return service.getPosts(dto);
	}

	@GetMapping("/{id}")
	PostDTO getPost(@PathVariable Long id) {
		return service.getPost(id);
	}

	@PostMapping("")
	PostDTO registPost(@Validated(PostDTO.OnCreate.class) @RequestBody PostDTO post) {
		return service.registPost(post);
	}

	@PutMapping("/{id}")
	PostDTO editPost(@PathVariable Long id, @Validated(PostDTO.OnUpdate.class) @RequestBody PostDTO post) {
		post.setId(id);
		return service.editPost(post);
	}

	@DeleteMapping("/{id}")
	int removePost(@PathVariable Long id) {
		return service.removePost(id);
	}
}
