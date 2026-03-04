package com.hana8.demo.repository;

import static org.assertj.core.api.Assertions.*;

import java.util.Comparator;
import java.util.List;
import java.util.stream.LongStream;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

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
	void pagingTest() {
		Sort sort = Sort.by("id").descending();
		Pageable pager = PageRequest.of(0, 10, sort);

		Page<Post> page1 = repository.findAll(pager);
		List<Post> posts = page1.getContent();
		posts.stream().mapToLong(Post::getId).forEach(System.out::println);
		System.out.println("page1.getTotalPages() = " + page1.getTotalPages());
		assertThat(page1.getTotalPages()).isEqualTo(repository.count() / 10);
		System.out.println("page1.getNumber() = " + page1.getNumber());
		assertThat(page1.getNumber()).isEqualTo(0);
		System.out.println("page1.getTotalElements() = " + page1.getTotalElements());
		System.out.println("page1.getSize() = " + page1.getSize());
		System.out.println("page1.isFirst() = " + page1.isFirst());
		System.out.println("page1.isLast() = " + page1.isLast());

		Page<Post> page2 = repository.findAll(page1.nextPageable());
		System.out.println("page2.getNumber() = " + page2.getNumber());

		assertThat(page1.getContent()).doesNotContainAnyElementsOf(page2.getContent());

		if (page2.isLast())
			return;

		Page<Post> page3 = repository.findAll(page2.nextOrLastPageable());
		System.out.println("page3.getNumber() = " + page3.getNumber());

		// sort test
		assertThat(page3.getContent()).isSortedAccordingTo(
			Comparator.comparingLong(Post::getId).reversed()
		);
	}

	@Test
	void titleLikeTest() {
		List<Post> posts = repository.findByTitleStartingWith("Title8");
		System.out.println("posts = " + posts);
		posts.stream().map(Post::getTitle).forEach(System.out::println);
		assertThat(posts).isNotEmpty()
			.allSatisfy(p ->
				assertThat(p.getTitle()).contains("Title8")
			);
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
