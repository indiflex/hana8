package com.hana8.demo.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Subscriber {
	@Id
	private String email;
	private String pwd;
	@Column(nullable = false, length = 15)
	private String nickname;
	private boolean social;

	@ElementCollection(fetch = FetchType.LAZY)
	@JoinTable(name = "SubscriberRole",
		joinColumns = @JoinColumn(name = "email")
	)
	@Column(name = "role")
	@Builder.Default
	@ToString.Exclude
	private List<SubscriberRole> roles = new ArrayList<>();

	public Subscriber addRole(SubscriberRole role) {
		if (roles == null)
			roles = new ArrayList<>();
		roles.add(role);
		return this;
	}

	public void clearRoles() {
		if (roles != null)
			roles.clear();
	}
}
