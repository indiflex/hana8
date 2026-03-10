package com.hana8.demo.entity;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.ColumnDefault;

import com.hana8.demo.common.enums.BloodType;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
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
		name = "uniq_User_email",
		columnNames = {"email"}
	)
})
@Data
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Member extends BaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "int unsigned")
	private Long id;

	// @Column(columnDefinition = "varchar(30) not null")
	@Column(nullable = false, length = 30)
	private String nickname;

	@Column(nullable = false)
	private String email;

	private String passwd;

	@Enumerated(EnumType.STRING)
	private BloodType bloodType;

	@ColumnDefault("false")
	private Boolean isActive;

	@OneToMany(mappedBy = "captain")
	@Builder.Default
	@ToString.Exclude
	private List<Dept> captainDepts = new ArrayList<>();

	@ManyToMany(mappedBy = "deptMembers")
	@Builder.Default
	private List<Dept> depts = new ArrayList<>();

	public Member(Long id) {
		this.id = id;
	}
}
