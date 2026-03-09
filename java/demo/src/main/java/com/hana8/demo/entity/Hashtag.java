package com.hana8.demo.entity;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(uniqueConstraints = {
	@UniqueConstraint(
		name = "uniq_Hashtag_tag",
		columnNames = {"tag"}
	)
})
@Data
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Hashtag extends BaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "int unsigned")
	private Long id;

	@Column(nullable = false, length = 30)
	private String tag;

	@ManyToMany
	@JoinTable(name = "HashtagPost",
		joinColumns = @JoinColumn(name = "hashtag",
			foreignKey = @ForeignKey(name = "fk_HashtagPost_hashtag")),
		inverseJoinColumns = @JoinColumn(name = "post",
			foreignKey = @ForeignKey(name = "fk_HashtagPost_post"))
	)
	@OnDelete(action = OnDeleteAction.CASCADE)
	@Builder.Default
	private List<Post> hashtagPosts = new ArrayList<>();

	public Hashtag(String tag) {
		this.tag = tag;
	}

	public void addPosts(Post post) {
		if (hashtagPosts == null)
			hashtagPosts = new ArrayList<>();

		hashtagPosts.add(post);
	}
}
