package com.hana8.hello;

import java.util.Arrays;

public class AutoBoxingString {
	public static void main(String[] args) {
		// Integer iObj = new Integer(100); // deprecated
		Integer iObj = 100;
		System.out.println("iObj.byteValue() = " + iObj.toString());
		int i1 = iObj;

		String s = "hong@gmail.com";
		int idxAt = s.indexOf('@');
		System.out.println("idxAt = " + idxAt);
		String name = s.substring(0, idxAt);
		System.out.println("name = " + name);
		String domain = s.substring(idxAt + 1);
		System.out.println("domain = " + domain);

		String[] name_domain = s.split("@");
		System.out.println("name_domain = " + Arrays.toString(name_domain));

		for (String str : name_domain) {
			System.out.println("str = " + str);
		}

		boolean contains = s.contains("@");
		System.out.println("contains = " + contains);
	}
}
