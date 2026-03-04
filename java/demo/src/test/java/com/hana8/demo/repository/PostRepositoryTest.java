package com.hana8.demo.repository;

import static org.assertj.core.api.Assertions.*;

import java.util.List;
import java.util.stream.LongStream;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hana8.demo.entity.Post;

class PostRepositoryTest extends BaseRepositoryTest {
	private static long id;
	private static long orgCnt = 0;

	@Autowired
	private PostRepository repository;

	@BeforeEach
	void setOrgCnt() {
		if (orgCnt == 0)
			orgCnt = repository.count();
	}

	// @Test
	void createAllTest() {
		long cnt = repository.count();
		List<Post> posts = LongStream.rangeClosed(4, 100)
			.mapToObj(l -> Post.builder()
				.title("Title" + l)
				.body("body of " + l)
				.writer("writer" + l)
				.build()
			).toList();

		repository.saveAll(posts);

		assertThat(repository.count()).isEqualTo(cnt + 97);
	}

	@Test
	@Order(1)
	void createTest() {
		Post savedPost = repository.save(new Post("Title 101", "writer101"));
		Post post = repository.findById(savedPost.getId()).orElseThrow();
		assertThat(post).isEqualTo(savedPost);
		assertThat(orgCnt + 1).isEqualTo(repository.count());
		id = post.getId();
	}

	@Test
	@Order(2)
	void updateTest() {
		Post post = repository.findById(id).orElseThrow();
		post.setTitle(post.getTitle() + "xxx");
		repository.save(post);

		Post post2 = repository.findById(id).orElseThrow();
		assertThat(post.getTitle()).isEqualTo(post2.getTitle());
	}

	@Test
	@Order(3)
	void deleteTest() {
		Post post = repository.findById(id).orElseThrow();
		repository.delete(post);
		assertThat(orgCnt).isEqualTo(repository.count());
	}

}
