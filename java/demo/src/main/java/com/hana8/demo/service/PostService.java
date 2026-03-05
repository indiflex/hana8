package com.hana8.demo.service;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.hana8.demo.dto.PostDTO;
import com.hana8.demo.dto.PostListDTO;
import com.hana8.demo.entity.Post;
import com.hana8.demo.mapper.PostMapper;
import com.hana8.demo.repository.PostRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PostService {
	private final PostRepository repository;
	private final PostMapper mapper;

	public List<PostDTO> getPosts(PostListDTO dto) {
		PageRequest pager = PageRequest.of(dto.getPage() - 1, dto.getPageSize(), Sort.by("id").descending());

		List<Post> posts = repository.findAll(pager).getContent();

		return posts.stream().map(mapper::toDTO).toList();
	}

	public PostDTO getPost(Long id) {
		Post post = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(id)));

		return mapper.toDTO(post);
	}

	public PostDTO registPost(PostDTO post) {
		return mapper.toDTO(repository.save(mapper.toEntity(post)));
	}

	public PostDTO editPost(PostDTO post) {
		Post oldPost = repository.findById(post.getId())
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(post.getId())));

		oldPost.setTitle(post.getTitle());
		oldPost.setBody(post.getBody());
		oldPost.setWriter(post.getWriter());

		return mapper.toDTO(repository.save(oldPost));
	}

	public int removePost(Long id) {
		repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(id)));

		return repository.deletePost(id);
	}

}
