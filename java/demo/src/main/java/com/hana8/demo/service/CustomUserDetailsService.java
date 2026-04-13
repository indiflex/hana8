package com.hana8.demo.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.hana8.demo.entity.Subscriber;
import com.hana8.demo.mapper.SubscriberMapper;
import com.hana8.demo.repository.SubscriberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {
	private final SubscriberRepository repository;
	private final SubscriberMapper mapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("*** Service.loadUserByUsername=" + username);
		Subscriber subscriber = repository.getWithRoles(username);
		if (subscriber == null)
			throw new UsernameNotFoundException(username + " is Not Found!");

		return mapper.toDTO(subscriber);
	}
}
