package com.hana8.hello;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
// @ToString(exclude = "dept", callSuper = true)
@ToString
@EqualsAndHashCode(exclude = {"score"})
@AllArgsConstructor
public class Emp {
	String name;
	@ToString.Exclude
	String dept;
	int score;

	// @Override
	// public String toString() {
	// 	return "%s (%d)".formatted(name, score);
	// }

	public void print() {
		System.out.printf("%s: %s(%d)", dept, name, score);
	}

	public void println() {
		System.out.printf("%s: %s(%d)%n", dept, name, score);
	}

	public static EmpBuilder builder() {
		return new EmpBuilder();
	}

	public static void main(String[] args) throws IllegalAccessException {

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

		Emp x = Emp.builder().name("Hong").email("afd@afdas.com").dept("Sales").score(90).build();
		System.out.println("x = " + x);

		Field[] fields = x.getClass().getDeclaredFields();
		Arrays.asList(fields).forEach(System.out::println);
		fields[0].set(x, "Kang");
	}

	public static class EmpBuilder {
		private String name;
		private String dept;
		private int score;
		private ArrayList<String> emails;

		EmpBuilder() {
		}

		public EmpBuilder name(String name) {
			this.name = name;
			return this;
		}

		public EmpBuilder dept(String dept) {
			this.dept = dept;
			return this;
		}

		public EmpBuilder score(int score) {
			this.score = score;
			return this;
		}

		public EmpBuilder email(String email) {
			if (this.emails == null)
				this.emails = new ArrayList<String>();
			this.emails.add(email + "@gmail.com");
			return this;
		}

		public EmpBuilder emails(Collection<? extends String> emails) {
			if (emails == null) {
				throw new NullPointerException("emails cannot be null");
			}
			if (this.emails == null)
				this.emails = new ArrayList<String>();
			this.emails.addAll(emails);
			return this;
		}

		public EmpBuilder clearEmails() {
			if (this.emails != null)
				this.emails.clear();
			return this;
		}

		public Emp build() {

			return new Emp(this.name, this.dept, this.score);
		}

		public String toString() {
			return "Emp.EmpBuilder(name=" + this.name + ", dept=" + this.dept + ", score=" + this.score + ", emails="
				+ this.emails + ")";
		}
	}
}
