package com.hana8.hello.annotaions;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.function.Function;
import java.util.function.Supplier;

public class Validator {
	public static String validate(Field f, Object fval, Class<? extends Annotation> annCls,
		Function<Annotation, String> msgFn, Supplier<Boolean> checker) {
		try {
			Annotation annotation = f.getAnnotation(annCls);
			if (checker.get()) {
				return msgFn.apply(annotation);
				// return String.format(msgFn.apply(annotation), value);
			}
		} catch (Exception e) {
			throw new AnnotationException(e.getMessage());
		}

		return null;
	}
}
