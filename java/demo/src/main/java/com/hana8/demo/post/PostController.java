package com.hana8.demo.post;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/posts")
@RequiredArgsConstructor
public class PostController {
	private final PostService service;

	@GetMapping("")
	public List<Post> getPosts() {
		return service.getList();
	}

	@PostMapping("")
	public Post addPost(@RequestBody PostAddDTO post) {
		return service.addPost(post);
	}

	@GetMapping("/{id}")
	public Post getPost(@PathVariable Long id) {
		return service.getPost(id);
	}

	@PutMapping("/{id}")
	public Post editPost(@PathVariable Long id, @RequestBody PostEditDTO post) {
		post.setId(id);
		return service.editPost(post);
	}

	@DeleteMapping("/{id}")
	public Integer removePost(@PathVariable Long id) {
		return service.removePost(id);
	}

}
