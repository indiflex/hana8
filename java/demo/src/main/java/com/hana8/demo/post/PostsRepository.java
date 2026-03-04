package com.hana8.demo.post;

import java.util.List;

public interface PostsRepository {
	public List<Posts> findAll();

	public Posts find(Long id);

	public Posts createPost(PostsDTO post);

	public Posts updatePost(PostsDTO post);

	public int deletePost(Long id);
}
