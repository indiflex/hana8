package com.hana8.hello.annotaions;

public @interface MyAnnotation {
	String value() default "";

	int count() default 1;
}
