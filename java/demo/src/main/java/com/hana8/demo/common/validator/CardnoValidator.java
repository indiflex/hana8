package com.hana8.demo.common.validator;

import java.util.regex.Pattern;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class CardnoValidator implements ConstraintValidator<Cardno, String> {
	private static final Pattern pattern = Pattern.compile("\\d{10,19}");

	@Override
	public boolean isValid(String value, ConstraintValidatorContext ctx) {
		if (value == null || value.isBlank())
			return true;

		String replaceSpaceAndHyphen = value.replaceAll("[\\s-]", "");
		if (!pattern.matcher(replaceSpaceAndHyphen).matches())
			return false;
		return luhn(replaceSpaceAndHyphen);
	}

	// 세계표준 10 ~ 19 카드번호 체크 알고리즘(Luhn)
	// 1) 987654321 -> 1 + 2*2 + 3 + 4*2 + 5 + 6*2(1+2) + 7 + 8*2(1+6) + 9
	private boolean luhn(String cardno) {
		int sum = 0;
		boolean alternate = false;

		for (int i = cardno.length() - 1; i >= 0; i--) {
			int digit = cardno.charAt(i) - '0';

			if (alternate) {
				digit *= 2;
				if (digit > 9)
					digit -= 9; // 2자릿 수 합치기
			}

			sum += digit;
			alternate = !alternate;
		}

		System.out.println("sum = " + sum);
		return sum % 10 == 0;
	}

}
