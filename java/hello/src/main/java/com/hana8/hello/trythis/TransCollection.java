package com.hana8.hello.trythis;

import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class TransCollection {
	public static void main(String[] args) {
		String fullLog = """
			1001,Hong,Choi,5000
			1002,Lee,Park,20000
			1003,Hong,Jade,10000
			1004,Kim,Park,20000
			1005,Lee,Choi,5000
			1006,Hong,Choi,5000""";

		// Map<String, Map<String, Integer>>
		//        Hong    Choi   5000 + 5000
		// Map<String, LinkedHashSet<String>> sendersByReceiver = new HashMap<>();
		Map<String, Set<String>> sendersByReceiver = new HashMap<>();
		Map<String, Integer> senderCnt = new HashMap<>();
		Map<String, Integer> senderAmt = new HashMap<>();
		Map<String, Integer> receiverAmt = new HashMap<>();
		for (String log : fullLog.split("\n")) {
			String[] row = log.split(",");
			String receiver = row[1];
			String sender = row[2];
			int amt = Integer.parseInt(row[3]);

			// [receiver : Set[sender] ]
			// if (sendersByReceiver.containsKey(receiver)) {
			// 	Set<String> senders = sendersByReceiver.get(receiver);
			// 	senders.add(sender);
			// } else {
			// 	Set<String> senders = new LinkedHashSet<>();
			// 	senders.add(sender);
			// 	sendersByReceiver.put(receiver, senders);
			// }

			// sendersByReceiver.computeIfAbsent(receiver, k -> new LinkedHashSet<>());
			// sendersByReceiver.get(receiver).add(sender);

			sendersByReceiver.computeIfAbsent(receiver, k -> new LinkedHashSet<>()).add(sender);

			// if (senderCnt.containsKey(sender)) {
			// 	int cnt = senderCnt.get(sender) + 1;
			// 	senderCnt.put(sender, cnt);
			// } else {
			// 	senderCnt.put(sender, 1);
			// }

			// senderCnt.computeIfAbsent(sender, k -> 0);
			// senderCnt.computeIfPresent(sender, (k, v) -> v + 1);

			senderCnt.compute(sender, (k, v) -> (v == null ? 0 : v) + 1);
			senderAmt.compute(sender, (k, v) -> (v == null ? 0 : v) + amt);
			receiverAmt.compute(receiver, (k, v) -> (v == null ? 0 : v) + amt);
		}

		System.out.println("sendersByReceiver = " + sendersByReceiver);
		System.out.println("senderCnt = " + senderCnt);
		System.out.println("senderAmt = " + senderAmt);
		System.out.println("receiverAmt = " + receiverAmt);

		System.out.print("1. ");
		for (Map.Entry<String, Set<String>> entry : sendersByReceiver.entrySet()) {
			System.out.printf("%s: %s\t", entry.getKey(), entry.getValue());
		}
		System.out.println();

		printMax(senderCnt, "2. 자주: %s (%d회) , ");
		printMax(senderAmt, "최고금액: %s (%,d원)%n");
		printMax(receiverAmt, "3. %s (%,d원)%n");
	}

	private static void printMax(Map<String, Integer> map, String fmtStr) {
		String key = "";
		int max = 0;
		for (Map.Entry<String, Integer> entry : map.entrySet()) {
			if (entry.getValue() > max) {
				key = entry.getKey();
				max = entry.getValue();
			}
		}
		System.out.printf(fmtStr, key, max);
	}
}
