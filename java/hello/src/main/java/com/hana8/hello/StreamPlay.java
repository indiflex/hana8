package com.hana8.hello;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
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

		List<Integer> ttlist = List.of(1, 10, 6, 3, 3, 5, 4, 2, 7, 7, 9, 8, 10);
		System.out.println("짝수의 개수");
		System.out.println(
			"ttlist.stream().filter(i -> i % 2 == 0).count() = " + ttlist.stream().filter(i -> i % 2 == 0).count());
		System.out.println("각 숫자를 제곱");
		System.out.println("(i -> i * i) = " + ttlist.stream().map(i -> i * i).toList());
		System.out.println("중복 제거");
		System.out.println("ttlist.stream().distinct().toList() = " + ttlist.stream().distinct().toList());
		System.out.println(
			"ttlist.stream().collect(Collectors.toSet()) = " + new HashSet<>(ttlist));
		System.out.println("기본 정렬");
		System.out.println("ttlist.stream().sorted().toList() = " + ttlist.stream().sorted().toList());
		System.out.println("역순(내림차순) 정렬");
		System.out.println("ttlist.stream().sorted(Comparator.reverseOrder()).toList() = " + ttlist.stream()
			.sorted(Comparator.reverseOrder())
			.toList());

		System.out.println("처음 5개만 출력");
		System.out.println("ttlist.stream().limit(5).toList() = " + ttlist.stream().limit(5).toList());
		System.out.println("처음 5개 건너뛰고 출력");
		System.out.println("ttlist.stream().skip(5).toList() = " + ttlist.stream().skip(5).toList());
		System.out.println("값이 5보다 큰 것만 출력");
		System.out.println(
			"ttlist.stream().filter(i -> i > 5).toList() = " + ttlist.stream().filter(i -> i > 5).toList());
		System.out.println(
			"ttlist.stream().dropWhile(i -> i <= 5).toList() = " + ttlist.stream().dropWhile(i -> i <= 5).toList());
		System.out.println("1~10의 합계");
		System.out.println("IntStream.rangeClosed(1, 10).sum() = " + IntStream.rangeClosed(1, 10).sum());
		System.out.println("random 5개의 평균");

		System.out.println(
			"ttlist.stream()\n\t\t\t.limit(5)\n\t\t\t.mapToDouble(i -> Math.random()).average() = " + ttlist.stream()
				.limit(5)
				.mapToDouble(i -> Math.random()).average());

		System.out.println("IntStream.range(1,6).mapToDouble(i -> Math.random()).average() = " + IntStream.range(1, 6)
			.mapToDouble(i -> Math.random())
			.average());

		System.out.println(
			"Stream.generate(Math::random).mapToDouble(Double::valueOf).average() = " + Stream.generate(Math::random)
				.limit(5)
				.mapToDouble(Double::valueOf)
				.average()
				.orElse(-1));

		System.out.println(
			"Stream.generate(Math::random)\n\t\t\t.mapToDouble(Double::valueOf) = " + Stream.generate(Math::random)
				.limit(5)
				.mapToDouble(d -> Math.round(d * 100.0) / 100.0).boxed()
				.toList());

	}
}
