package com.hana8.hello;

import java.util.Arrays;

public class PlayArray {
	public static void main(String[] args) {
		int[] iarr = new int[3];
		int[] iarr2 = new int[] {1, 2, 3};
		int[] iarr3 = {1, 2, 3};
		// int[] iarr4 = new int[Integer.MAX_VALUE - 2];

		// int di = 0;
		// while (true) {
		// 	try {
		// 		int[] arr = new int[Integer.MAX_VALUE - ++di];
		// 		System.out.println("Succeed: " + arr.length);
		// 		break;
		// 	} catch (Throwable e) {
		// 		System.out.println(e.getMessage() + ',' + di);
		// 	}
		// }
		//
		// System.out.println("di = " + di);

		int[][] arr = new int[3][4]; // [[1,2,3,4]] [[5,6,7,8] [[...]]
		System.out.println("arr.length = " + arr.length);
		System.out.println("arr[0].length = " + arr[0].length);
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				arr[i][j] = i * 4 + j + 1;
			}
		}
		// System.out.println("arr = " + Arrays.toString(arr));
		System.out.println("arr = " + Arrays.deepToString(arr));

		for (int[] _arr : arr) {
			// System.out.println(Arrays.toString(_arr));
			for (int j : _arr) {
				System.out.printf("%3d", j);
			}
			System.out.println();
		}
	}
}
