package com.hana8.hello;

public @interface NotNull {
	String value() default "Need NotNull!";
}
