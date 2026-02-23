package com.hana8.hello.annotaions;

public class AnnotationException extends IllegalStateException {
	public AnnotationException(String msg) {
		super("Annotation Error: " + msg);
	}
}
