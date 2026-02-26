package com.hana8.demo.post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class PostRepositoryImpl implements PostRepository {
	private final Map<Long, Post> posts = new HashMap<>();

	@Override
	public List<Post> findAll() {
		return this.posts.values().stream().toList();
	}

	@Override
	public Post find(Long id) {
		return this.posts.get(id);
	}

	@Override
	public Post createPost(PostAddDTO post) {
		Long id = posts.keySet().stream().max(Long::compareTo).orElse(0L) + 1;
		// Post newer = new Post();
		// newer.setId(id);
		// newer.setTitle(post.getTitle());

		Post newer = Post.builder().id(id).title(post.getTitle()).body(post.getBody()).build();

		posts.put(id, newer);
		return newer;
	}

	@Override
	public Post updatePost(PostEditDTO post) {
		Post oldPost = posts.get(post.getId());
		oldPost.setTitle(post.getTitle());
		oldPost.setBody(post.getBody());
		// oldPost.setWriter(post.getWriter());

		return oldPost;
	}

	@Override
	public int deletePost(Long id) {
		if (!posts.containsKey(id))
			return 0;
		posts.remove(id);
		return 1;
	}
}
