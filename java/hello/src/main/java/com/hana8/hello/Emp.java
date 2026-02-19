package com.hana8.hello;

import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

public class Emp {
	String name;
	String dept;
	int score;

	Emp(String name, String dept, int score) {
		this.name = name;
		this.dept = dept;
		this.score = score;
	}

	public String getName() {
		return name;
	}

	public String getDept() {
		return dept;
	}

	public int getScore() {
		return score;
	}

	@Override
	public String toString() {
		return "%s (%d)".formatted(name, score);
	}

	public void print() {
		System.out.printf("%s: %s(%d)", dept, name, score);
	}

	public void println() {
		System.out.printf("%s: %s(%d)%n", dept, name, score);
	}

	public static void main(String[] args) {
		List<Emp> emps = Arrays.asList(
			new Emp("Hong", "Sales", 85),
			new Emp("Kim", "Sales", 95),
			new Emp("Choi", "HR", 55),
			new Emp("Nam", "HR", 75),
			new Emp("Lee", "IT", 82),
			new Emp("Park", "IT", 92),
			new Emp("Ahn", "Sales", 95)
		);

		// 1. 고과 점수가 70점 미만인 사람은 제외
		List<Emp> candidates = emps.stream().filter(emp -> emp.getScore() >= 70).toList();
		candidates.forEach(System.out::println);
		System.out.println("1. 고과 점수가 70점 미만인 사람은 제외");
		candidates.forEach(Emp::println);

		// 2. 남은 사람들은 부서별로 출력 (부서 이름 순)
		var empsByDept = candidates.stream()
			.sorted(Comparator.comparing(Emp::getDept, String::compareTo))
			.collect(Collectors.groupingBy(Emp::getDept, LinkedHashMap::new, Collectors.toList()));
		System.out.println("2. 남은 사람들은 부서별로 출력 (부서 이름 순)");
		System.out.println(empsByDept);

		// 3.부서 별 최고 점수 1명만 남기기
		// (점수가 같다면 이름이 빠른 사람 한명만 선택 Aha, Nam, Park)
		LinkedHashMap<String, Optional<Emp>> maxScoreByDept = candidates.stream()
			.sorted(Comparator.comparing(Emp::getName))
			.sorted(Comparator.comparing(Emp::getDept))
			.collect(Collectors.groupingBy(Emp::getDept, LinkedHashMap::new,
				Collectors.maxBy(Comparator.comparingInt(Emp::getScore))));
		System.out.println("3.부서 별 최고 점수 1명만 남기기");
		System.out.println(maxScoreByDept);

		// 4. 부서 이름 역순으로 출력   - 출력 예) 부서명: 이름(점수)
		LinkedHashMap<String, Optional<Emp>> maxScoreByDeptOrder = candidates.stream()
			.sorted(Comparator.comparing(Emp::getDept).reversed())
			.sorted(Comparator.comparing(Emp::getName))
			.collect(Collectors.groupingBy(Emp::getDept, LinkedHashMap::new,
				Collectors.maxBy(Comparator.comparing(Emp::getScore))));
		System.out.println("4. 부서 이름 역순으로 출력   - 출력 예) 부서명: 이름(점수)");
		System.out.println(maxScoreByDeptOrder);
		System.out.println("-----------------------");

		Set<Map.Entry<String, Optional<Emp>>> entries = maxScoreByDeptOrder.entrySet();
		for (Map.Entry<String, Optional<Emp>> entry : entries) {
			String dept = entry.getKey();
			Emp tEmp = entry.getValue().orElse(null);
			if (tEmp == null)
				System.out.printf("%s: 최고 득접자 없음!%n", dept);
			else
				tEmp.println();
		}
	}

}
