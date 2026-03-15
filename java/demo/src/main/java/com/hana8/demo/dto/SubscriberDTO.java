package com.hana8.demo.dto;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SubscriberDTO extends User {
	private String email;
	private String pwd;
	private String nickname;
	private boolean social;
	private List<String> roleNames;

	public SubscriberDTO(String email, String pwd, String nickname, boolean social, List<String> roleNames) {
		super(nickname, pwd, roleNames.stream().map(SimpleGrantedAuthority::new).toList());
		this.email = email;
		this.pwd = pwd;
		this.nickname = nickname;
		this.social = social;
		this.roleNames = roleNames;
	}

	// to make JWT token (client에게 내려 줄 값)
	public Map<String, Object> getClaims() {
		Map<String, Object> map = new HashMap<>();
		map.put("email", email);
		map.put("nickname", nickname);
		map.put("pwd", pwd);
		map.put("social", social);
		map.put("roleNames", roleNames);

		return map;
	}
}
