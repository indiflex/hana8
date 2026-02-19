package com.hana8.hello;

public @interface MyAnnotation {
	String value() default "";

	int count() default 1;
}
