package com.hana8.demo.post;

import java.util.List;

public interface PostRepository {
	public List<Post> findAll();

	public Post find(Long id);

	public Post createPost(PostDTO post);

	public Post updatePost(PostDTO post);

	public int deletePost(Long id);
}
