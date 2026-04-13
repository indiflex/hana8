package com.hana8.hello.annotaions;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Optional;
import java.util.function.Function;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.PARAMETER})
public @interface Max {
	int value();

	String msg() default "%d 보다는 작아야합니다!";

	class Validate {
		public static String validate(Field f, Object fval) {
			int value = f.getAnnotation(Max.class).value();
			Function<Annotation, String> msgFn
				= a -> String.format(((Max)a).msg(), value);

			int v = fval instanceof Number num ? num.intValue()
				: Optional.ofNullable(fval).orElse("").toString().length();

			return Validator.validate(f, fval, Max.class, msgFn, () -> v > value);
		}
	}
}
