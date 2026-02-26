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

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping({"/posts", "/posts/list"})
@RequiredArgsConstructor
public class PostController {
	private final PostService service;

	@GetMapping("")
	public List<Post> getPosts(HttpServletRequest req) {
		return service.getList(isList(req));
	}

	@PostMapping("")
	public Post addPost(HttpServletRequest req, @RequestBody PostAddDTO post) {
		return service.addPost(post, isList(req));
	}

	@GetMapping("/{id}")
	public Post getPost(HttpServletRequest req, @PathVariable Long id) {
		return service.getPost(id, isList(req));
	}

	@PutMapping("/{id}")
	public Post editPost(HttpServletRequest req, @PathVariable Long id, @RequestBody PostEditDTO post) {
		post.setId(id);
		return service.editPost(post, isList(req));
	}

	@DeleteMapping("/{id}")
	public Integer removePost(HttpServletRequest req, @PathVariable Long id) {
		return service.removePost(id, isList(req));
	}

	private boolean isList(HttpServletRequest req) {
		return req.getRequestURI().contains("/list");
	}
}
