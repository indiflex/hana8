package com.hana8.demo.post;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PostServiceImpl implements PostService {
	private final PostRepository repository;

	@Override
	public List<Post> getList() {
		return repository.findAll();
	}

	@Override
	public Post getPost(Long id) {
		return repository.find(id);
	}

	@Override
	public Post addPost(PostAddDTO post) {
		return repository.createPost(post);
	}

	@Override
	public Post editPost(PostEditDTO post) {
		return repository.updatePost(post);
	}

	@Override
	public int removePost(Long id) {
		return repository.deletePost(id);
	}
}
