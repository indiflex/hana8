package com.hana8.demo.dto;

import java.time.LocalDate;

import com.hana8.demo.common.serializer.CardnoSerializer;
import com.hana8.demo.common.serializer.TelnoSerializer;
import com.hana8.demo.common.validator.Cardno;
import com.hana8.demo.common.validator.Telno;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Past;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import tools.jackson.databind.annotation.JsonSerialize;

@Data
@AllArgsConstructor
@Builder
public class User {
	private Integer id;

	@NotBlank
	private String username;

	@Email
	private String email;

	@Pattern(regexp = "^[A-Za-z0-9_.]+@hanabank.com$", message = "사내 이메일 주소 형식이 잘 못되었습니다!")
	private String comail;

	@Past
	private LocalDate birthdt;

	@NotNull
	@Telno
	@JsonSerialize(using = TelnoSerializer.class)
	private String tel;

	@Cardno
	@JsonSerialize(using = CardnoSerializer.class)
	private String creditCard;

	public void replaceSpaceAndHyphen() {
		this.tel = this.tel.replaceAll("[\\s-]", "");

		if (this.creditCard != null)
			this.creditCard = this.creditCard.replaceAll("[\\s-]", "");
	}
}
