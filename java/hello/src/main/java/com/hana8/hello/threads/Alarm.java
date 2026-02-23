package com.hana8.hello.threads;

import java.io.File;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Scanner;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;

public class Alarm {
	private static final DateTimeFormatter TF = DateTimeFormatter.ofPattern("HH:mm:ss");

	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			LocalTime lt = null;
			while (lt == null) {
				LocalTime now = LocalTime.now();
				System.out.printf("현재 시간은 %s, 알람시간은? ", now.format(TF));
				try {
					lt = LocalTime.parse(scanner.nextLine(), TF);
				} catch (DateTimeParseException e) {
					System.out.println("Invalid TimeFormat!");
					System.out.println("usage) HH:mm:ss");
				}
			}

			final LocalTime alarmTime = lt;
			// Thread.ofPlatform().start(() -> {})
			Thread t = new Thread(() -> {
				System.out.println("Alarm Time: " + alarmTime);
				LocalTime now = LocalTime.now();
				while (now.isBefore(alarmTime)) {
					System.out.printf("\r%s", now.format(TF));
					try {
						Thread.sleep(1000);
						now = LocalTime.now();
					} catch (InterruptedException e) {
						throw new RuntimeException(e);
					}
				}

				System.out.println(now.format(TF) + " Alarm!!");
				// Toolkit.getDefaultToolkit().beep();
				try (AudioInputStream ais = AudioSystem.getAudioInputStream(
					new File("/Users/jade/Downloads/sample.wav"))) {
					Clip clip = AudioSystem.getClip();
					clip.open(ais);
					clip.start();
					Thread.sleep(5000);
				} catch (Exception e) {
					throw new RuntimeException(e);
				}
			});
			t.start();

			// scanner.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
