package com.hana8.demo.entity;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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

	@OneToMany(mappedBy = "post")
	@Builder.Default
	private List<Reply> replies = new ArrayList<>();

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

	// @Column(nullable = false, length = 31)
	// private String writer;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "writer", nullable = false,
		foreignKey = @ForeignKey(name = "fk_Post_writer_Member"))
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Member writer;

	public Post(String title, Member writer) {
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
