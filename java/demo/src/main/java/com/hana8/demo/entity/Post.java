package com.hana8.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Post extends BaseEntity {
	// @Id
	// @GeneratedValue(strategy = GenerationType.UUID)
	// // @UuidGenerator(style = UuidGenerator.Style.RANDOM)
	// @UuidGenerator
	// private String id;

	@Id
	// @Tsid
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "int unsigned")
	private Long id;

	@Column(nullable = false)
	private String title;

	@Column(length = 2000)
	private String body;

	@Column(nullable = false, length = 31)
	private String writer;

	public Post(String title, String writer) {
		this.title = title;
		this.writer = writer;
		this.body = "body of " + title;
	}
}
