package com.hana8.hello.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.List;

public class Nio {
	private final static Path path = Path.of("t.txt");

	public static void main(String[] args) throws IOException {
		// smallFile();
		bigFileWrite();
		bigFileRead();
	}

	private static void bigFileWrite() {
		try (BufferedWriter bw = Files.newBufferedWriter(path, StandardOpenOption.APPEND)) {
			for (int i = 0; i < 1000; i++) {
				bw.write("write" + i + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
	}

	private static void bigFileRead() throws IOException {
		try (BufferedReader br = Files.newBufferedReader(path)) {
			String ln;
			while ((ln = br.readLine()) != null) {
				System.out.println("ln = " + ln);
			}
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
	}

	private static void smallFile() throws IOException {
		Files.writeString(path, "안녕하세요 자바21입니다!", StandardOpenOption.APPEND);

		String s = Files.readString(path);
		System.out.println("s = " + s);

		List<String> ss = Files.readAllLines(path);
		for (String x : ss) {
			if (x.startsWith("ERROR:"))
				System.out.println("x = " + x);
		}
		System.out.println("ss.stream().filter(s -> s.startsWith(\"Error:\")).toList() = " + ss.stream()
			.filter(sx -> sx.startsWith("Error:"))
			.toList());
	}
}
