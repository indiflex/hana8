package com.hana8.demo.post;

import java.util.List;

import lombok.RequiredArgsConstructor;
import lombok.Setter;

// @Service
@RequiredArgsConstructor
@Setter
// @Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class PostServiceImpl implements PostsService {
	private final PostsRepository repository;
	private final PostsRepository repositoryList;

	// @Autowired
	// public PostServiceImpl(PostRepository repository, PostRepository repositoryList) {
	// 	this.repository = repository;
	// 	this.repositoryList = repositoryList;
	// }

	// private boolean isList;

	@Override
	public List<Posts> getList(boolean isList) {
		return isList ? repositoryList.findAll() : repository.findAll();
	}

	@Override
	public Posts getPost(Long id, boolean isList) {
		return isList ? repositoryList.find(id) : repository.find(id);
	}

	@Override
	public Posts addPost(PostsDTO post, boolean isList) {
		return isList ? repositoryList.createPost(post) : repository.createPost(post);
	}

	@Override
	public Posts editPost(PostsDTO post, boolean isList) {
		return isList ? repositoryList.updatePost(post) : repository.updatePost(post);
	}

	@Override
	public int removePost(Long id, boolean isList) {
		return isList ? repositoryList.deletePost(id) : repository.deletePost(id);
	}
}
