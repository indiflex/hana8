package com.hana8.hello;

public @interface Min {
	int value();

	String msg() default "%d 보다는 커야합니다!";
}
