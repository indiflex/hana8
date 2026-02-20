package com.hana8.hello.annotaions;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Optional;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.PARAMETER})
public @interface Min {
	int value();

	String msg() default "%d 보다는 커야합니다!";

	class Validate {
		public static validate(Field f, Object fval) {
			Min annotation = f.getAnnotation(Min.class);
			String fname = f.getName();
			int value = annotation.value();
			int v = fval instanceof Number ? ((Number)fval).intValue()
				: Optional.ofNullable(fval).orElse("").toString().length();

			if (v < value) {
				String msg = annotation.msg();
				msgs.computeIfAbsent(fname, k -> new ArrayList<>());
				msgs.get(fname).add(String.format(msg, value));
			}
		}
	}
}
