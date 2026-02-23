package com.hana8.hello.threads;

import java.util.Arrays;
import java.util.concurrent.ThreadLocalRandom;

public class Vote {
	// private String name;

	private static final String[] areas = {"서울", "강원", "부산", "충청", "전라"};

	public static void main(String[] args) throws InterruptedException {
		Runnable myRun = () -> {
			String name = Thread.currentThread().getName();
			int percent = 0;
			int position = Arrays.asList(areas).indexOf(name) + 1;
			while (percent < 50) {
				percent += ThreadLocalRandom.current().nextInt(1, 10);
				if (percent > 50) {
					percent -= (percent % 50);
				}

				synchronized (System.out) {
					System.out.print("\033[" + position + "B"); // 아래로 이동
					System.out.printf("\r%s 개표율: %s (%d %%)", name,
						"*".repeat(percent), percent);
					System.out.print("\033[" + position + "A"); // 위로 이동
				}

				try {
					Thread.sleep((long)(1000 * Math.random()));
				} catch (InterruptedException e) {
					throw new RuntimeException(e);
				}
			}
			// System.out.println(Thread.currentThread().getName() + " 개표완료!");
		};

		System.out.println("\n\n\n\n\n\n\n"); // 공간 확보
		System.out.print("\033[5A"); // 위로 이동
		for (String area : areas) {
			// Thread t = new Thread(myRun, area);
			// t.start();
			// Thread.ofPlatform().start(myRun);
			Thread.ofVirtual().start(myRun);
			// t.join();
		}
	}
}
