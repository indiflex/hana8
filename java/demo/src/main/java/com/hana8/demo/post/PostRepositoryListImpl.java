package com.hana8.demo.post;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class PostRepositoryListImpl implements PostRepository {
	List<Post> posts = new ArrayList<>();

	@Override
	public List<Post> findAll() {
		return posts;
	}

	@Override
	public Post find(Long id) {
		return posts.stream().filter(post -> Objects.equals(post.getId(), id)).findFirst().orElse(null);
	}

	@Override
	public Post createPost(PostAddDTO post) {
		Long id = posts.stream().mapToLong(Post::getId).max().orElse(0) + 1;

		Post newer = Post.builder().id(id).title(post.getTitle()).body(post.getBody()).build();
		posts.add(newer);

		return newer;
	}

	@Override
	public Post updatePost(PostEditDTO post) {
		Post oldPost = find(post.getId());
		if (oldPost == null)
			return null;

		oldPost.setTitle(post.getTitle());
		oldPost.setBody(post.getBody());

		return oldPost;
	}

	@Override
	public int deletePost(Long id) {
		Post oldPost = find(id);
		if (oldPost == null)
			return 0;

		posts.remove(oldPost);
		return 1;
	}
}
