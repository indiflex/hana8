package com.hana8.ttt;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.CharBuffer;
import java.util.Arrays;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.IntStream;

public class Main {

	@SuppressWarnings("StringEquality")
	public static void main(String[] args) {
		//TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text
		// to see how IntelliJ IDEA suggests fixing it.
		String name = "Hong";
		System.out.printf("Hello and welcome %s %d!%n%n", name, name.length());
		String s10 = "ABC";
		String s11 = new String("ABC");
		System.out.printf("'%s' == '%s': %b%n", s10, s11, s10 == s11);
		System.out.printf("'%s'.compareTo('%s'): %d%n", s10, s11, s10.compareTo(s11));
		System.out.printf("'%s' equals '%s': %b%n", s10, s11, s10.equals(s11));

		String s12 = new String("ABC");
		String s13 = "ABC";
		System.out.println("s10.hashCode() = " + s10.hashCode());
		System.out.println("s11.hashCode() = " + s11.hashCode());
		System.out.println("s12.hashCode() = " + s12.hashCode());
		System.out.println("s13.hashCode() = " + s13.hashCode());
		//noinspection StringEquality
		System.out.printf("xx '%s' equals '%s': %b, %b%n", s11, s12, s11.equals(s12), s11 == s12);
		byte[] b1 = s10.getBytes();
		System.out.println("b1 = " + new String(b1.clone()));
		byte[] b2 = s11.getBytes();

		// boolean e1 = b1.equals(b2);
		boolean e1 = Arrays.equals(b1, b2);
		System.out.printf("%b = %s%n", e1, Arrays.toString(b1));

		// String s2 = String.format("%d", name.length());
		// String s3 = String.valueOf(name.length());
		// String s4 = name.length() + "x";
		// System.out.println("s3.compareTo(s2) = " + s4.compareTo(s2));

		double d1 = 3.14159;
		BigDecimal bd1 = new BigDecimal(String.valueOf(d1));
		// BigDecimal bd1 = BigDecimal.valueOf(d1);
		System.out.println("bd1 = " + bd1);

		BigDecimal bd2 = new BigDecimal("1.5");
		System.out.printf("bd1 + bd2 = %s%n", bd1.add(bd2));
		System.out.printf("bd1 - bd2 = %s%n", bd1.subtract(bd2));
		System.out.printf("bd1 * bd2 = %s%n", bd1.multiply(bd2));
		System.out.printf("bd1 * bd2 = %s%n", bd1.multiply(bd2).setScale(2, RoundingMode.UP));
		System.out.println("(3.14159 / 1.5) = " + (3.14159 / 1.5));
		BigDecimal divUp = bd1.divide(bd2, RoundingMode.UP);
		BigDecimal divDn = bd1.divide(bd2, RoundingMode.DOWN);
		System.out.printf("UP of bd1 / bd2 = %s, %f%n", divUp, divUp.doubleValue());
		System.out.printf("DOWN of bd1 / bd2 = %s, %f%n", divDn, divDn.doubleValue());
		System.out.printf("bd1 / bd2 = %s%n", bd1.divide(bd2, RoundingMode.UP).setScale(3, RoundingMode.HALF_UP));
		// System.out.printf("bd1 / bd2 = %s%n", bd1.divide(bd2).setScale(2, RoundingMode.UP));

		// BigDecimal bd10 = new BigDecimal("9");
		// BigDecimal bd3 = BigDecimal.valueOf(3);
		// System.out.printf("10 / 3 = %s%n", bd10.divide(bd3));
		// System.out.printf("10 / 3 = %s%n", bd10.divide(bd3, RoundingMode.CEILING));

		int month = ThreadLocalRandom.current().nextInt(1, 13);
		String season = switch (month) {
			case 11, 12, 1, 2, 3, 4 -> {
				System.out.println("month = " + month);
				yield "겨울";
			}
			default -> "여름";

		};
		System.out.println("season = " + season + season.contains(new StringBuilder("겨")));

		CharBuffer buf = CharBuffer.allocate(10);
		System.out.println("position,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity());
		buf.put('H');
		System.out.println("position,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity());
		buf.put('i');
		System.out.println("position,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity());

		buf.put('~');
		System.out.println("position,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity());
		// buf.put('y');
		// buf.put('z');
		// buf.position(1);
		// System.out.println("buf11 = " + buf.toString());
		System.out.println("9position,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity());
		// buf.position(0);
		// char c0 = buf.get();
		// System.out.println("c0 = " + c0);

		buf.flip();
		char c1 = buf.get();
		System.out.println(
			"f-position,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity() + c1);
		System.out.println("buf22 = " + buf);
		System.out.println("xposition,limit,capacity = " + buf.position() + ',' + buf.limit() + ',' + buf.capacity());

		System.out.println("remaining=" + buf.hasRemaining());
		System.out.print("buf=");
		while (buf.hasRemaining()) {
			char c = buf.get();
			System.out.print(c);
		}
		System.out.println();

		String s = "ABCDEF";
		System.out.println("s.concat(\"GHI\") = " + s.concat("GHI"));

		// int di = 1;
		// while (true) {
		// 	try {
		// 		int[] iarr = new int[Integer.MAX_VALUE - di++];
		// 		System.out.printf("The End: %,d%n", iarr.length);
		// 		break;
		// 	} catch (OutOfMemoryError e) {
		// 		// throw new RuntimeException(e);
		// 		System.out.println(e.getMessage());
		// 	}
		// }
		// System.out.println("di = " + di);

		int[] iarr = new int[] {1, 2, 3};
		for (int i : iarr) {
			System.out.print(i + "\t");
		}

		int[] iarr3 = IntStream.range(1, 6).toArray();
		System.out.println(Arrays.toString(iarr3));

		int[] iarr4 = IntStream.range(0, 10).map(i -> i + 1).toArray();
		System.out.println("Arrays.toString(iarr4 = " + Arrays.toString(iarr4));
		int[] iarr5 = new int[10];
		Arrays.setAll(iarr5, i -> i + 1);
		System.out.println("iarr5 = " + Arrays.toString(iarr5));

		int[] arr1 = IntStream.range(0, 5).toArray();
		System.out.println("arr1 = " + Arrays.toString(arr1));
		int[] arr2 = new int[8];
		System.arraycopy(arr1, 0, arr2, 2, arr1.length);
		System.out.println("arr2 = " + Arrays.toString(arr2));

		Grade[] grades = Grade.values();
		System.out.println(Arrays.toString(grades) + " : " + grades[1]);
		System.out.println("x=" + Grade.VVIP + ',' + Grade.VIP.level());

		// Grade vip = Grade.VIP;
		// System.out.println("vip = " + vip);

		double random = Math.random();
		Status status = random > 0.5 ? Status.READY : Status.DONE;
		System.out.println("status=" + status);

		switch (status) {
			case READY -> System.out.println("준비~");
			case DONE -> System.out.println("완료!");
		}

		User hong = new User(1);
		User kim = new User(1);
		System.out.println(hong.equals(kim));
	}

	public enum Grade {
		BASIC(1),
		VIP(2),
		VVIP(3);

		private final int level;

		Grade(int level) {
			System.out.println("level = " + level);
			this.level = level;
		}

		public int level() {
			return level * 100;
		}
	}

	enum Status {
		READY, DONE;

		Status() {
			System.out.println("Sts=" + this.name());
		}
	}

}
