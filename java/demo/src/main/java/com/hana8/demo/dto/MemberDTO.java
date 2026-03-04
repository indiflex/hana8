package com.hana8.demo.dto;

import com.hana8.demo.common.enums.BloodType;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
	@NotNull(groups = MemberDTO.OnUpdate.class, message = "수정할 멤버의 id를 입력하세요!")
	private Long id;

	@NotBlank
	private String nickname;

	@Email
	@NotBlank
	private String email;

	@Size(min = 8, max = 16)
	private String passwd;

	private BloodType bloodType;

	private boolean isActive;

	public interface OnCreate {
	}

	public interface OnUpdate {
	}

	// entityToDTO()
	// dtoToEntity
}
