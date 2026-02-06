package com.hana8.hello.trythis;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class SnailTest {

	@Test
	void makeSnail() {
		int[] arr = {1, 2, 3, 4, 5, 16, 17, 18, 19, 6, 15, 24, 25, 20, 7, 14, 23, 22, 21, 8, 13, 12, 11, 10, 9};

		assertArrayEquals(arr, Snail.makeSnail(5));
	}

	@Test
	void makeTriangleSnail() {
		int[] arr4 = {1, 2, 9, 3, 10, 8, 4, 5, 6, 7};
		int[] arr5 = {1, 2, 12, 3, 13, 11, 4, 14, 15, 10, 5, 6, 7, 8, 9};
		// n = 6 ⇒ [1,2,15,3,16,14,4,17,21,13,5,18,19,20,12,6,7,8,9,10,11]

		assertArrayEquals(arr4, Snail.makeTriangleSnail(4));
		assertArrayEquals(arr5, Snail.makeTriangleSnail(5));
	}
}
