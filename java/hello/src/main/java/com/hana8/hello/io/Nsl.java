package com.hana8.hello.io;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class Nsl {
	public static void main(String[] args) throws UnknownHostException {
		if (args.length < 1) {
			System.out.println("usage");
			System.out.println("java Nsl https://naver.com");
			System.exit(0);
		}

		String domain = args[0].replaceAll("https?://([^/?#]+).*", "$1");
		System.out.println("domain = " + domain);

		for (InetAddress iaddr : InetAddress.getAllByName(domain)) {
			System.out.printf("%s - %s%n", iaddr.getHostName(), iaddr.getHostAddress());
		}
	}
}
