package com.hana8.demo.entity;

import java.time.Instant;
import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.persistence.UniqueConstraint;
import lombok.Data;

@Entity
@Data
@Table(name = "User", uniqueConstraints = {
	@UniqueConstraint(
		name = "uniq_User_email",
		columnNames = {"email"}
	),
	@UniqueConstraint(
		name = "uniq_User_username_telno",
		columnNames = {"username", "telno"}
	)
})
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(updatable = false, columnDefinition = "int unsigned")
	private Long id;

	@Column(nullable = false, length = 31)
	private String username;

	@Column(unique = true, nullable = false)
	private String email;

	@Column(nullable = false, length = 12)
	private String telno;

	@CreationTimestamp
	private Instant createdAt;

	@UpdateTimestamp
	private LocalDateTime updatedAt;

	@Transient
	private int auth;
}
