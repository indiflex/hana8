package com.hana8.demo.entity;

import io.hypersistence.utils.hibernate.id.Tsid;
import jakarta.persistence.Entity;
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
	@Tsid
	private Long id;

	private String title;

	public Post(String title) {
		this.title = title;
	}
}
