package hello;

public class Scan {
	static String[] NAMES = {"Hong", "Kim", "Lee"};

	public static void main(String[] args) {
		String s1 = "ABC";
		// System.out.printf("s1 == s2 : %b%n", ("ABC" == "ABC"));
		String s2 = "ABC";
		//noinspection StringEquality
		System.out.println("s1 == s2: " + (s1 == s2));
		String s3 = new String("ABC");
		System.out.println("s1 == s3: " + (s1 == s3));
		byte b1 = (byte)129;
		System.out.println("b1 = " + b1);
		for (String name : NAMES) {
			System.out.println(name);
		}

		int i1 = (int)3.5;             // 3
		int ix = i1 + 123;
		double d1 = i1 + ix;
		System.out.println("d1 = " + d1);

		float f = 0.99999998f;
		double d = 0.99999998;
		System.out.println("f, d = " + f + ", " + d);

		String str1 = "Hello, world!";
		String str2 = """
			Hello, world!""";
		System.out.println("str1 == str2: " + (str1 == str2));

		String str3 = """
			Hello, world!
			""";
		System.out.println("str3 = " + str3);
		System.out.println("str2 == str3: " + (str2 == str3));
	}
}
