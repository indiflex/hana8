package com.hana8.demo.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
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

	// @OneToOne(mappedBy = "post", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@OneToOne(mappedBy = "post", cascade = CascadeType.ALL)
	private PostBody body;

	@Column(nullable = false, length = 31)
	private String writer;

	@OneToMany(mappedBy = "post")
	private List<Reply> replies;

	public Post(String title, String writer) {
		this.title = title;
		this.writer = writer;
		setBody(new PostBody("body of " + title));
	}

	public void setBody(PostBody body) {
		this.body = body;
		if (body != null)
			body.setPost(this);
	}
}
