package com.hana8.demo.entity;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.MapsId;
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
public class PostBody extends BaseEntity {
	// @Id
	// @GeneratedValue(strategy = GenerationType.IDENTITY)
	// @Column(columnDefinition = "int unsigned")
	// private Long id;

	@Id
	private Long id;

	@OneToOne
	@MapsId
	@JoinColumn(name = "post", referencedColumnName = "id",
		foreignKey = @ForeignKey(name = "fk_PostBody_post",
			foreignKeyDefinition = "on update cascade"))
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Post post;

	@Lob
	@Column(columnDefinition = "text", nullable = false)
	private String body;

	public PostBody(String body) {
		this.body = body;
	}

	// only use when @MapsId
	public void setPost(Post post) {
		this.post = post;
		if (post != null)
			post.setBody(this);
	}
}
