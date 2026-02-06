package com.hana8.hello.trythis;

import java.util.Arrays;

public class Snail {
	public static void main(String[] args) {
		makeSnail(5);
		makeSnail(6);
		makeSnail(7);
	}

	private static void makeSnail(int N) {
		int[][] snails = new int[N][N];

		int val = 0;
		int row = -1;
		int col = 0;
		int flag = 1;

		// w: 9 -> 7 -> 5 -> 3 -> 1
		for (int w = N + N - 1; w > 0; w -= 2) {
			for (int i = 0; i < w; i++) {
				if (i <= w / 2)
					row += flag;
				else
					col += flag;

				// System.out.printf("col,row = %d,%d (%d)%n", col, row, val + 1);
				snails[col][row] = ++val;
			}

			flag *= -1;
		}

		System.out.println("snails = " + Arrays.deepToString(snails));
		for (int[] _arr : snails) {
			for (int n : _arr) {
				System.out.printf("%3d", n);
			}
			System.out.println();
		}
	}
}
