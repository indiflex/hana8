package com.hana8.demo;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import com.hana8.demo.repository.PostRepository;

import jakarta.annotation.Nullable;
import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class InitLoader implements ApplicationRunner {
	private final PostRepository postRepository;

	@Override
	public void run(@Nullable ApplicationArguments args) {
		/*
		 moved to data.sql (2026-03-05 by Jade)
		 postRepository.save(new Post("Title1", "hong"));
		 postRepository.save(new Post("Title2", "kim"));
		 postRepository.save(new Post("Title3", "lee"));
		*/
	}
}
