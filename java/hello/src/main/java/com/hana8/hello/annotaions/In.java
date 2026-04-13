package com.hana8.hello.annotaions;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.PARAMETER})
public @interface In {
	String[] value() default {};

	String msg() default "%s만 가능합니다!";

	class Validate {
		public static String validate(Field f, Object fval) {
			String[] value = f.getAnnotation(In.class).value();
			Function<Annotation, String> msgFn
				= a -> String.format(((In)a).msg(), Arrays.toString(value));

			String v = String.valueOf(fval);
			return Validator.validate(f, fval, In.class, msgFn, () -> !List.of(value).contains(v));
		}
	}
}
