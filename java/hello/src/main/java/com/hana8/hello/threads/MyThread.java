package com.hana8.hello.threads;

import java.util.concurrent.ThreadLocalRandom;

// public class MyThread extends Dog implements Runnable{
public class MyThread extends Thread {

	@Override
	public void run() {
		try {
			Thread.sleep(2000);
			System.out.printf("Thread %s started...%n", this.getName());
		} catch (InterruptedException e) {
			throw new RuntimeException(e);
		}
	}

	public static void main(String[] args) throws InterruptedException {
		for (int i = 0; i < 5; i++) {
			// Thread t = new MyThread();
			// t.start();

			Thread t2 = new Thread(() -> {
				int cnt = 0;
				while (cnt < 20) {
					cnt += ThreadLocalRandom.current().nextInt(1, 5);
					System.out.printf("\rt2 - cnt = %d", cnt);
					try {
						Thread.sleep((long)(1000 * Math.random()));
					} catch (InterruptedException e) {
						throw new RuntimeException(e);
					}
				}
				System.out.println("End of cnt: " + cnt);
			}, "Thread" + i);
			t2.start();
			t2.join();
		}
		System.out.println("The End!");
	}
}
