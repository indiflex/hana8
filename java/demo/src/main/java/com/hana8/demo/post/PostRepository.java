package com.hana8.demo.post;

import java.util.List;

public interface PostRepository {
	public List<Post> findAll();

	public Post find(Long id);

	public Post createPost(PostAddDTO post);

	public Post updatePost(PostEditDTO post);

	public int deletePost(Long id);
}
