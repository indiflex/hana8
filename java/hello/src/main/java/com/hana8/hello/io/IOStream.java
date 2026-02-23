package com.hana8.hello.io;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class IOStream {
	public static void main(String[] args) throws IOException {
		OutputStream os = new FileOutputStream("t.txt");
		os.write(65);
		os.write(66);
		os.write(10);
		os.write(System.lineSeparator().getBytes());
		os.write("세종대왕".getBytes());
		os.write(System.lineSeparator().getBytes());
		os.close();

		InputStream is = new FileInputStream("t.txt");
		byte[] buf = new byte[100];
		int read = is.read(buf);
		System.out.println("read + \":\" + new String(buf) = " + read + ":" + new String(buf));
	}
}
