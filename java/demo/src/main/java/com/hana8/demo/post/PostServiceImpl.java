package com.hana8.demo.post;

import java.util.List;

import lombok.RequiredArgsConstructor;
import lombok.Setter;

// @Service
@RequiredArgsConstructor
@Setter
// @Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class PostServiceImpl implements PostService {
	private final PostRepository repository;
	private final PostRepository repositoryList;

	// @Autowired
	// public PostServiceImpl(PostRepository repository, PostRepository repositoryList) {
	// 	this.repository = repository;
	// 	this.repositoryList = repositoryList;
	// }

	// private boolean isList;

	@Override
	public List<Post> getList(boolean isList) {
		return isList ? repositoryList.findAll() : repository.findAll();
	}

	@Override
	public Post getPost(Long id, boolean isList) {
		return isList ? repositoryList.find(id) : repository.find(id);
	}

	@Override
	public Post addPost(PostDTO post, boolean isList) {
		return isList ? repositoryList.createPost(post) : repository.createPost(post);
	}

	@Override
	public Post editPost(PostDTO post, boolean isList) {
		return isList ? repositoryList.updatePost(post) : repository.updatePost(post);
	}

	@Override
	public int removePost(Long id, boolean isList) {
		return isList ? repositoryList.deletePost(id) : repository.deletePost(id);
	}
}
