package com.hana8.hello.trythis;

import java.util.ArrayList;
import java.util.List;

@FunctionalInterface
interface MyPredicate<T> {
	boolean test(T t);
}

@FunctionalInterface
interface MyFunction<T, R> {
	R apply(T t);
}

@FunctionalInterface
interface MyReducer<T, R> {
	R reduce(R acc, T t);
}

public class MyLambda {
	static List<Integer> filter(List<Integer> list, MyPredicate<Integer> predicate) {
		List<Integer> result = new ArrayList<>();
		for (int i : list) {
			if (predicate.test(i))
				result.add(i);
		}
		return result;
		// return list.stream().filter(predicate::test).toList();
	}

	static List<Integer> map(List<Integer> list, MyFunction<Integer, Integer> function) {
		return list.stream().map(function::apply).toList();
	}

	static Integer find(List<Integer> list, MyPredicate<Integer> predicate) {
		for (int i : list) {
			if (predicate.test(i))
				return i;
		}

		return -1;
	}

	static Integer reducer(List<Integer> list, int initValue, MyReducer<Integer, Integer> reducer) {
		int acc = initValue;
		for (int i : list) {
			acc = reducer.reduce(acc, i);
		}
		return acc;
	}

}
