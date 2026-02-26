package com.hana8.demo.post;

import java.util.List;

public interface PostService {
	public List<Post> getList();

	public Post getPost(Long id);

	public Long addPost();

	public Long editPost();

	public Long removePost();
}
