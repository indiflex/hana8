package com.hana8.demo.post;

import java.util.List;

public interface PostService {
	public List<Post> getList(boolean isList);

	public Post getPost(Long id, boolean isList);

	public Post addPost(PostAddDTO post, boolean isList);

	public Post editPost(PostEditDTO post, boolean isList);

	public int removePost(Long id, boolean isList);
}
