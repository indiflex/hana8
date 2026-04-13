package com.hana8.hello.threads;

public class VirtualThread {
	public static void main(String[] args) {
		for (int i = 0; i < 1000000; i++) {
			final int ii = i;
			// Thread.ofPlatform().start(() -> {
			Thread.ofVirtual().start(() -> {
				System.out.println("Thread" + ii);
				try {
					Thread.sleep(10000);
				} catch (InterruptedException e) {
					throw new RuntimeException(e);
				}
			});
		}
	}
}
