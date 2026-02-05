package com.hana8.hello.trythis;

public class StringLogParser {
	public static void main(String[] args) {
		String log = """
			2024-02-05 09:15:23 ERROR UserService: Login failed for user admin
			2024-02-05 09:16:45 INFO PaymentService: Payment processed for order #1234
			2024-02-05 09:17:12 ERROR DatabaseService: Connection timeout
			2024-02-05 09:18:33 WARN UserService: Password retry limit reached for user john
			2024-02-05 09:19:01 ERROR UserService: Login failed for user admin
			2024-02-05 09:20:15 INFO OrderService: New order created #1235""";

		int errorCnt = 0;
		int infoCnt = 0;
		int warnCnt = 0;
		final String[] services = {"UserService", "PaymentService", "DatabaseService", "OrderService"};
		int[] serviceCnts = {0, 0, 0, 0};

		StringBuilder sbAdmin = new StringBuilder();
		StringBuilder sbError = new StringBuilder();
		String[] logs = log.split("\n");
		for (String l : logs) {
			// String[] arr = l.split("Service:");
			String[] dt_tm_lvl_svc_msg = l.split(" ", 5);
			// System.out.println("arr = " + Arrays.toString(dt_tm_lvl_svc_msg));

			String lvl = dt_tm_lvl_svc_msg[2];
			String svc = dt_tm_lvl_svc_msg[3].replace(":", "");
			String msg = dt_tm_lvl_svc_msg[4];
			switch (lvl) {
				case "ERROR" -> errorCnt++;
				case "INFO" -> infoCnt++;
				case "WARN" -> warnCnt++;
			}

			// IntStream.range(0, services.length).filter(i -> services[i].equals(svc)).findFirst().orElse(-1)
			// Arrays.asList(services).indexOf(svc)	
			for (int i = 0; i < services.length; i++) {
				if (services[i].equals(svc))
					serviceCnts[i]++;
			}

			if (msg.contains("admin")) {
				if (!sbAdmin.isEmpty())
					sbAdmin.append('\n');
				sbAdmin.append(l);
			}

			if (lvl.equals("ERROR")) {
				if (!sbError.isEmpty())
					sbError.append('\n');
				sbError.append(svc).append(':').append(' ').append(msg);
			}
		} // end of for...

		System.out.printf("1. 전체 로그: %d개%n", logs.length);
		System.out.printf("2. ERROR: %d개, INFO: %d개, WARN: %d개%n", errorCnt, infoCnt, warnCnt);

		int bigServiceCnt = 0;
		String bigService = "";
		for (int i = 0; i < serviceCnts.length; i++) {
			if (bigServiceCnt < serviceCnts[i]) {
				bigServiceCnt = serviceCnts[i];
				bigService = services[i];
			}
		}
		System.out.printf("3. 최다 등장한 서비스: %s (%d회)%n", bigService, bigServiceCnt);
		// System.out.println("serviceCnts = " + Arrays.toString(serviceCnts));

		System.out.println("4. admin 관련 로그\n" + sbAdmin);
		System.out.println("5. Error 로그\n" + sbError);
	}
}
