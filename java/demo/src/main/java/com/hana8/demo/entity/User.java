package com.hana8.demo.entity;

import java.math.BigDecimal;

import org.hibernate.annotations.ColumnDefault;

import com.hana8.demo.common.enums.BloodType;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.persistence.UniqueConstraint;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
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
public class User extends BaseEntity {
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

	@Enumerated(EnumType.STRING)
	private BloodType bloodType;

	@Column(precision = 8, scale = 2, nullable = false)
	@ColumnDefault("0.0")
	private BigDecimal salhour;  // cf. float, double

	@Transient
	private int auth;
}
