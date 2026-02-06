package com.hana8.hello.trythis;

import java.util.Arrays;

public class Snail {
	public static void main(String[] args) {
		makeSnail(5);
		makeSnail(6);
		makeSnail(7);
	}

	public static int[] makeSnail(int N) {
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

		int[] results = new int[N * N];
		int idx = 0;
		for (int[] _arr : snails) {
			for (int n : _arr) {
				System.out.printf("%3d", n);
				results[idx++] = n;
			}
			System.out.println();
		}
		System.out.println("results = " + Arrays.toString(results));
		return results;
	}

	public static int[] makeTriangleSnail(int N) {
		int[] results = new int[N];
		/*
		1 0 0
        2 6 0
        3 4 5
		 */
		int garo = 0;
		int sero = 0;
		int val = 0;
		// 0 -> 1 -> 2 -> 3
		for (int i = 0; i < N; i++) {
			for (int j = i; j < N + 1; j++) {
				if (i % 3 == 0)
					sero++;
				else if (i % 3 == 1)
					garo++;
				else {
					sero--;
					garo--;
				}
			}
		}

		return results;
	}
}
