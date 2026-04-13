package com.hana8.demo.common.validator;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = DateTimeValidator.class)
public @interface DateTime {
	String value() default "yyyy-MM-dd HH:mm:ss";

	String message() default "유효하지 않은 날짜 형식({value})입니다.";

	// 이하 Jakarta Bean Validation 필수 필드들
	// 시점 (Reqeust Method가 POST: OnCreate.class, PUT: OnUpdate.class)
	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}
