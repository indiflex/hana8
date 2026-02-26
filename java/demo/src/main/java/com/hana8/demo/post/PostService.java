package com.hana8.demo.post;

import java.util.List;

public interface PostService {
	public List<Post> getList();

	public Post getPost(Long id);

	public Post addPost(PostAddDTO post);

	public Post editPost(PostEditDTO post);

	public int removePost(Long id);
}
