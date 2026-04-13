package com.hana8.hello;

import java.math.BigDecimal;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
	private static void m(int iaa) {
		final int a = iaa % 10;
		char c = (char)a;
		// System.out.println("iaa = " + iaa);
		System.out.printf("iaa = %05d %c %c, a = %d%n", a, a, c, a);

		float f = 0.99999998f;
		double d = 0.99999998;
		System.out.println("f, d = " + f + ", " + d);

		String s1 = "ABC";
		String s2 = new String("ABC");
		String s3 = new String("ABC");
		System.out.println("s2.hashCode() = " + s2.hashCode());
		System.out.println("s3.hashCode() = " + s3.hashCode());
		System.out.println("(s2 == s3) = " + (s2 == s3));
		System.out.println("s2.equals(s3) = " + s2.equals(s3));
		System.out.println("s2.compare(s3) = " + s2.compareTo(s3));
		String sX = "ABC";
		System.out.println("sX + \"EFG\" = " + sX + "EFG");
		System.out.println("(s1 == sX) = " + (s1 == sX));

		StringBuilder sb = new StringBuilder(4);
		sb.append('A').append('B').append('C');
		if (Math.random() > 0.5)
			sb.append('D');
		System.out.println("sb.toString() = " + sb.toString());
		String sbb = sb.toString();
		String ab = sbb.replace("AB", sb);
		System.out.println("ab = " + ab);

		String fs = "sb: %s".formatted(ab);
		System.out.println("fs = " + fs);
		String tb1 = """
			   hello - %s
			""".formatted(ab);
		System.out.printf("tb1 = `%s`", tb1);
		System.out.println();
		String tb2 = """
			hello""";
		System.out.printf("tb2 = `%s`", tb2);
		System.out.println();
		System.out.println("------------");

		double d1 = 0.1;
		double d2 = 0.2;
		System.out.println("(d1 + d2 = " + (d1 + d2));

		BigDecimal bd1 = new BigDecimal("0.1");
		BigDecimal bd2 = new BigDecimal("0.2");

		BigDecimal add = bd1.add(bd2);
		System.out.println("add.doubleValue() = " + add.doubleValue());

		int[][] arr = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

		// boolean didFind = false;
		FOUND:
		for (int idx = 0; idx < arr.length; idx++) {
			for (int i = 0; i < arr[idx].length; i++) {
				System.out.printf("idx:i = %d:%d, arr[%d]=%d%n", idx, i, idx, arr[idx][i]);
				if (arr[idx][i] == 5) {
					System.out.printf("found idx:i=%d:%d%n", idx, i);
					// didFind = true;
					break FOUND;
				}
			}

			// if (didFind)
			// 	break;
		}

		int month = ThreadLocalRandom.current().nextInt(1, 13);
		String season = switch (month) {
			case 11, 12, 1, 2, 3, 4 -> {
				System.out.println("Winter!!!");
				yield "겨울";
			}
			default -> "여름";
		};
		System.out.println("season = " + season);

	}

	public static void main(String[] args) {
		//TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text
		// to see how IntelliJ IDEA suggests fixing it.
		System.out.printf("Hello and welcome!%n");

		for (int i = 1; i <= 3; i++) {
			//TIP Press <shortcut actionId="Debug"/> to start debugging your code. We have set one <icon src="AllIcons.Debugger.Db_set_breakpoint"/> breakpoint
			// for you, but you can always add more by pressing <shortcut actionId="ToggleLineBreakpoint"/>.
			System.out.println("i = " + i);
		}

		m(1);
		m(10);

		// 123 3.5 sadfdsaf
		System.out.print("Input num dbl name? ");
		Scanner scan = new Scanner(System.in);
		int num = scan.nextInt();
		double dbl = scan.nextDouble();
		String name = scan.nextLine();
		// scan.nextLine();
		System.out.printf("num dbl name = %d %.1f %s%n", num, dbl, name);
		scan.close();
	}
}
