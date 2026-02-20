package com.hana8.hello.threads;

import java.util.concurrent.ThreadLocalRandom;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class Vote {
	// private String name;

	public static void main(String[] args) throws InterruptedException {
		Runnable myRun = () -> {
			int percent = 0;
			while (percent < 100) {
				percent += ThreadLocalRandom.current().nextInt(1, 10);
				System.out.printf("%s 개표율: %s (%d %%)%n", Thread.currentThread().getName(),
					"*".repeat(percent), percent);

				try {
					Thread.sleep((long)(1000 * Math.random()));
				} catch (InterruptedException e) {
					throw new RuntimeException(e);
				}
			}
			System.out.println(Thread.currentThread().getName() + " 개표완료!");
		};

		String[] areas = {"서울", "강원", "부산", "충청", "전라"};
		for (String area : areas) {
			Thread t = new Thread(myRun, area);
			t.start();
			// t.join();
		}
	}
}
