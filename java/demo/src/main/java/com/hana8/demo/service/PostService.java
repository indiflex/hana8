package com.hana8.demo.service;

import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.hana8.demo.dto.PostDTO;
import com.hana8.demo.dto.PostListDTO;
import com.hana8.demo.dto.PostRequestDTO;
import com.hana8.demo.dto.PostSaveDTO;
import com.hana8.demo.entity.Post;
import com.hana8.demo.entity.PostBody;
import com.hana8.demo.entity.QPost;
import com.hana8.demo.mapper.PostBodyMapper;
import com.hana8.demo.mapper.PostMapper;
import com.hana8.demo.repository.PostBodyRepository;
import com.hana8.demo.repository.PostRepository;
import com.querydsl.core.BooleanBuilder;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PostService {
	private final PostRepository repository;
	private final PostBodyRepository bodyRepository;

	private final PostMapper mapper;
	private final PostBodyMapper bodyMapper;

	public List<PostDTO> getPosts(PostListDTO dto) {
		System.out.println("dto = " + dto);
		PageRequest pager = PageRequest.of(dto.getPage() - 1, dto.getPageSize(), Sort.by("id").descending());

		QPost post = QPost.post;
		BooleanBuilder bb = new BooleanBuilder();
		if (StringUtils.hasText(dto.getTitle()))
			bb.and(post.title.contains(dto.getTitle()));

		if (StringUtils.hasText(dto.getBody()))
			bb.and(post.body.body.contains(dto.getBody()));

		if (StringUtils.hasText(dto.getWriter()))
			bb.and(post.writer.eq(dto.getWriter()));

		if (StringUtils.hasText(dto.getWritedate())) {
			ZoneId zone = ZoneId.of("Asia/Seoul");
			// LocalDateTime start = dto.parseWritedate().atStartOfDay();
			ZonedDateTime start = dto.parseWritedate().atStartOfDay(zone);
			// LocalDateTime end = dto.parseWritedate().atTime(LocalTime.MAX);
			// LocalDateTime end = dto.parseWritedate().plusDays(1).atStartOfDay();
			ZonedDateTime end = dto.parseWritedate().plusDays(1).atStartOfDay(zone);
			System.out.println("start, end = " + start + ',' + end);
			// bb.and(post.createdAt.between(start, end));
			bb.and(post.createdAt.goe(start.toLocalDateTime()).and(post.createdAt.lt(end.toLocalDateTime())));
		}

		List<Post> posts = repository.findAll(bb, pager).getContent();

		return posts.stream().map(mapper::toDTO).toList();
	}

	public PostDTO getPost(Long id) {
		Post post = repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(id)));

		return mapper.toDTO(post);
	}

	public PostDTO registPost(PostSaveDTO post) {
		Post savedPost = repository.save(mapper.toEntity((PostRequestDTO)post));
		PostBody body = PostBody.builder().post(savedPost).body(post.getBody()).build();
		PostBody savedBody = bodyRepository.save(body);
		// PostDTO dto = mapper.toDTO(savedPost);
		// dto.setBody(PostBodyDTO.builder().id(body.getId()).body(body.getBody()).build());
		// return dto;

		savedPost.setBody(savedBody);
		return mapper.toDTO(savedPost);
		// return mapper.toDTO(repository.save(mapper.toEntity(post)));
	}

	public PostDTO editPost(PostDTO post) {
		Post oldPost = repository.findById(post.getId())
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(post.getId())));

		oldPost.setTitle(post.getTitle());
		oldPost.setBody(bodyMapper.toEntity(post.getBody()));
		oldPost.setWriter(post.getWriter());

		return mapper.toDTO(repository.save(oldPost));
	}

	public int removePost(Long id) {
		repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(id)));

		return repository.deletePost(id);
	}

}
