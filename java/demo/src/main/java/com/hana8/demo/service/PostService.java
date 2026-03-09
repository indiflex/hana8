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
import com.hana8.demo.dto.ReplyDTO;
import com.hana8.demo.entity.Post;
import com.hana8.demo.entity.PostBody;
import com.hana8.demo.entity.QPost;
import com.hana8.demo.entity.Reply;
import com.hana8.demo.mapper.PostMapper;
import com.hana8.demo.mapper.ReplyMapper;
import com.hana8.demo.repository.PostRepository;
import com.hana8.demo.repository.ReplyRepository;
import com.querydsl.core.BooleanBuilder;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PostService {
	private final PostRepository repository;
	private final ReplyRepository replyRepository;

	private final PostMapper mapper;
	private final ReplyMapper replyMapper;

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

		PostDTO dto = mapper.toDTO(post);
		dto.setReplies(replyMapper.toDTOList(replyRepository.findAllByPostId(id)));
		return dto;
	}

	public PostDTO registPost(PostDTO dto) {
		Post savedPost = repository.save(mapper.toEntity(dto));
		PostBody body = mapper.toEntity(dto.getBody());
		savedPost.setBody(body);
		return mapper.toDTO(repository.save(savedPost));
	}

	public PostDTO editPost(PostDTO post) {
		Post oldPost = repository.findById(post.getId())
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(post.getId())));

		oldPost.setTitle(post.getTitle());
		oldPost.setBody(mapper.toEntity(post.getBody()));
		oldPost.setWriter(post.getWriter());

		return mapper.toDTO(repository.save(oldPost));
	}

	public int removePost(Long id) {
		repository.findById(id)
			.orElseThrow(() -> new IllegalArgumentException("Post #%d is not found!".formatted(id)));

		return repository.deletePost(id);
	}

	public List<ReplyDTO> getReplies(Long postId) {
		List<Reply> replies = replyRepository.findAllByPostId(postId);
		// replies.stream().map(replyMapper::toDTO)
		return replyMapper.toDTOList(replies);
	}

	public ReplyDTO getReply(Long id) {
		return replyMapper.toDTO(
			replyRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Reply not Found!")));
	}

	public ReplyDTO addReply(ReplyDTO dto) {
		Post post = repository.findById(dto.getPostId()).orElseThrow();
		Reply reply = replyMapper.toEntity(dto);
		reply.setPost(post);
		return replyMapper.toDTO(replyRepository.save(reply));
	}

	public ReplyDTO editReply(ReplyDTO dto) {
		Reply reply = replyRepository.findById(dto.getId())
			.orElseThrow(() -> new IllegalArgumentException("Reply not Found!"));

		reply.setReply(dto.getReply());
		return replyMapper.toDTO(replyRepository.save(reply));
	}

	public int removeReply(Long id) {
		replyRepository.findById(id).orElseThrow();
		return replyRepository.deleteByReplyId(id);
	}
}
