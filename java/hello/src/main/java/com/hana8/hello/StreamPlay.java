package com.hana8.hello;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamPlay {
	public static void main(String[] args) {
		List<String> list = Arrays.asList("JS", "TS", "Java", "JS");
		Stream<String> stream = list.stream();
		List<String> list1 = list.stream().toList();
		List<String> collect = list.stream().collect(Collectors.toList());
		// list.stream().toList()
	}
}
