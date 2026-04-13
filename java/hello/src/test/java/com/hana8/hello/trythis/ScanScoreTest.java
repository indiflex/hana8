package com.hana8.hello.trythis;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

class ScanScoreTest {

	@Test
	void grading() {
		// 학점은 90점 이상은 A, 80 ~ 89점음 B, 70 ~ 79는 C, 그 외 D 학점
		assertEquals('A', ScanScore.grading(90));
		assertEquals('A', ScanScore.grading(99));
		assertEquals('A', ScanScore.grading(100));
		assertEquals('B', ScanScore.grading(80));
		assertEquals('B', ScanScore.grading(85));
		assertEquals('B', ScanScore.grading(89));
	}

	@ParameterizedTest
	@CsvSource({
		"90, A",
		"99, A",
		"100, A",
		"80, B",
	})
	void grading(int score, char grade) {
		assertEquals(grade, ScanScore.grading(score));
	}

	@Test
	void calcScore() throws Exception {
		String[] names = {"Hong", "Kim", "Lee"};
		int[] scores = {71, 80, 92};

		String expectStr = "총점은 243점, 평균은 81.00점, 최고 득점자는 Lee이며 학점은 A 입니다.";

		ScanScore ss = new ScanScore();
		assertEquals(expectStr, ss.calcScore(names, scores));

		int[] scores2 = {1, 0, 100};
		String expectStr2 = "총점은 101점, 평균은 33.67점, 최고 득점자는 Lee이며 학점은 A 입니다.";
		assertEquals(expectStr2, ss.calcScore(names, scores2));

		int[] scores3 = {-1, 0, 100};
		assertThrows(Exception.class, () -> ss.calcScore(names, scores3));
	}
}
