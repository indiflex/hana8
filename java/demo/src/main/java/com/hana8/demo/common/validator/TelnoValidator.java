package com.hana8.demo.common.validator;

import java.util.regex.Pattern;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class TelnoValidator implements ConstraintValidator<Telno, String> {
	private static final Pattern pattern = Pattern.compile("^(" +
		"02[0-9]{7,8}|" +
		"0[3-6][1-5]\\d{7,8}|" +
		"01[016-9]\\d{7,8}|" +   // 휴대폰
		"070\\d{7,8}|" +         // 인터넷 전화
		"050\\d{8,9}|" +         // 안전번호
		"0[78]0[02]\\d{7}|" +    // 수신자부담(080), 정보이용료(070)
		"1[0-9]{3}\\d{4}" +      // 대표번호
		")$");

	@Override
	public boolean isValid(String value, ConstraintValidatorContext ctx) {
		if (value == null || value.isBlank())
			return true;

		// 010-123 41234 ==> 01012341234
		String replaceSpaceAndHyphen = value.replaceAll("[\\s-]", "");
		return pattern.matcher(replaceSpaceAndHyphen).matches();
	}
}
