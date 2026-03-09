package com.hana8.demo.entity;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
public class Reply extends BaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "int unsigned")
	private Long id;

	@ManyToOne()
	@JoinColumn(name = "post", referencedColumnName = "id",
		columnDefinition = "int unsigned not null",
		foreignKey = @ForeignKey(name = "fk_Reply_post"))
	@OnDelete(action = OnDeleteAction.CASCADE)
	@ToString.Exclude
	private Post post;

	@Column(nullable = false)
	private String reply;

	@Column(nullable = false, length = 31)
	private String replyer;
}
