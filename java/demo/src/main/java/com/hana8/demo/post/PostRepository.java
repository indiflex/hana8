package com.hana8.demo.post;

import java.util.List;

public interface PostRepository {
	public List<Post> findAll();

	public Post find(Long id);

	public Long createPost();

	public Long updatePost();

	public Long deletePos();
}
