package com.hana8.hello;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class StreamPlay {
	public static void main(String[] args) {
		List<String> list = Arrays.asList("JS", "TS", "Java", "JS");
		Stream<String> stream = list.stream();
		List<String> list1 = list.stream().toList();
		// List<String> collect = list.stream().collect(Collectors.toList());
		// list.stream().toList()

		String collect = list.stream().collect(Collectors.joining(", "));
		String collect2 = String.join(", ", list);
		System.out.println("collect2 = " + collect2);
		list.forEach(System.out::println);
		// list.stream().forEach(System.out::println);
		System.out.println("collect(Collectors.groupingBy(String::length)) = " + list.stream()
			.collect(Collectors.groupingBy(String::length)));

		long count = list.stream().map(String::length).count();
		System.out.println("count = " + count);
		// long count = list.stream().map(String::length).sum();
		Stream<Integer> stream1 = list.stream().map(String::length);
		IntStream intStream = list.stream().mapToInt(String::length);
		// intStream.sum();

		System.out.println(
			"list.stream().mapToInt(String::length).sum() = " + list.stream().mapToInt(String::length).sum());

		System.out.println("IntStream.range(1, 10) = " + Arrays.toString(IntStream.range(1, 10).toArray()));
		IntStream intStream1 = IntStream.rangeClosed(1, 10);
		System.out.println("intStream1.sum() = " + intStream1.sum());

		// Map<String, Integer> map1 = list.stream().collect(Collectors.toSet()).stream()
		Map<String, Integer> map1 = new HashSet<>(list).stream()
			.collect(Collectors.toMap(s -> s, String::length));
		System.out.println("map1 = " + map1);

		Collections.swap(list, 1, 2);
		System.out.println("list = " + list);

		Function<String, Integer> length = String::length;
		Consumer<String> print = System.out::println;

		System.out.println("length.apply(\"Str\") = " + length.apply("Str"));
		print.accept("Jade");

		int[] array = IntStream.range(1, 10).skip(3).limit(5).toArray();
		System.out.println("array = " + Arrays.toString(array));

		Map<Integer, List<String>> collect1 = list.stream()
			.collect(Collectors.groupingBy(String::length));

		List<Integer> list2 = list.stream().map(String::length).toList();
		List<List<Integer>> list3 = list.stream().map(s -> List.of(s.length(), s.length() + 1)).toList();
		System.out.println("list3 = " + list3);
		List<Integer> list4 = list.stream().flatMap(s -> Stream.of(s.length(), s.length() + 1)).toList();
		System.out.println("list4 = " + list4);
	}
}
