package com.hana8.hello.trythis;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Scanner;

public class ScanScore {
	public final static int STUDENT_CNT = 3;

	public static void main(String[] args) throws Exception {
		String[] names = new String[STUDENT_CNT];
		int[] scores = new int[STUDENT_CNT];

		Scanner scanner = new Scanner(System.in);
		for (int i = 0; i < 3; i++) {
			System.out.print("이름과 점수는? ");
			try {
				names[i] = scanner.next();
				scores[i] = scanner.nextInt();
			} catch (Exception e) {
				System.out.println("입력형식이 잘못되었습니다! usage) 홍길동 80");
				i--;
				scanner.nextLine();
			}
		}

		scanner.close();

		ScanScore ss = new ScanScore();
		System.out.println(ss.calcScore(names, scores));
	}

	// 학점은 90점 이상은 A, 80 ~ 89점음 B, 70 ~ 79는 C, 그 외 D 학점
	public static char grading(int score) {
		// if (score >= 90) return 'A';
		// else if (score >)
		return switch (score / 10) {
			case 9, 10 -> 'A';
			case 8 -> 'B';
			case 7 -> 'C';
			default -> 'D';
		};
	}

	public String calcScore(String[] names, int[] scores) throws Exception {
		int totScore = 0;
		int bestScore = 0;
		String bestMember = "";

		int i;
		for (i = 0; i < 3; i++) {
			if (scores[i] < 0)
				throw new Exception("Score must over 0!");

			totScore += scores[i];
			if (scores[i] > bestScore) {
				bestScore = scores[i];
				bestMember = names[i];
			}
		}

		// double avgScore = (double)totScore / i;
		BigDecimal bdTotScore = new BigDecimal(totScore);
		BigDecimal bdCnt = BigDecimal.valueOf(i);
		double avgScore = bdTotScore.divide(bdCnt, 2, RoundingMode.HALF_UP).doubleValue();
		return "총점은 %d점, 평균은 %.2f점, 최고 득점자는 %s이며 학점은 %c 입니다.".formatted(totScore, avgScore, bestMember,
			grading(bestScore));
	}
}
