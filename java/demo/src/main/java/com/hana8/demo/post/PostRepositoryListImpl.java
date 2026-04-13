package com.hana8.demo.post;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class PostRepositoryListImpl implements PostsRepository {
	List<Posts> posts = new ArrayList<>();

	@Override
	public List<Posts> findAll() {
		return posts;
	}

	@Override
	public Posts find(Long id) {
		return posts.stream().filter(post -> Objects.equals(post.getId(), id)).findFirst().orElse(null);
	}

	@Override
	public Posts createPost(PostsDTO post) {
		Long id = posts.stream().mapToLong(Posts::getId).max().orElse(0) + 1;

		Posts newer = Posts.builder().id(id).title(post.getTitle()).body(post.getBody())
			.writer(post.getWriter())
			.build();
		posts.add(newer);

		return newer;
	}

	@Override
	public Posts updatePost(PostsDTO post) {
		Posts oldPost = find(post.getId());
		if (oldPost == null)
			return null;

		oldPost.setTitle(post.getTitle());
		oldPost.setBody(post.getBody());

		return oldPost;
	}

	@Override
	public int deletePost(Long id) {
		Posts oldPost = find(id);
		if (oldPost == null)
			return 0;

		posts.remove(oldPost);
		return 1;
	}
}
