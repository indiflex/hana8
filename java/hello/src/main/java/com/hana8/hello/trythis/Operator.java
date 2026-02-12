package com.hana8.hello.trythis;

import java.math.BigDecimal;
import java.util.Scanner;

import com.hana8.hello.Operation;

public class Operator {
	// overload
	public static BigDecimal getNumber(Scanner scanner) {
		return getNumber(scanner, 2, null);
	}

	public static BigDecimal getNumber(Scanner scanner, int num, BigDecimal defValue) {
		while (true) {
			System.out.printf("값%d? ", num);
			try {
				String inputStr = scanner.nextLine();

				if (inputStr.isBlank())
					return defValue;
				if (inputStr.equals("."))
					throw new IllegalStateException("END");

				return new BigDecimal(inputStr);
			} catch (NumberFormatException e) {
				System.out.println("숫자만 입력 가능합니다!");
			}
		}
	}

	public static Operation getOperation(Scanner scanner) {
		while (true) {
			System.out.print("연사자(+, -, *, /) ");
			char cmd = scanner.nextLine().charAt(0);
			if (cmd == '.')
				throw new IllegalStateException("END");

			Operation foundOper = null;
			for (Operation oper : Operation.values()) {
				if (oper.isMe(cmd)) {
					foundOper = oper;
					break;
				}
			}

			if (foundOper == null)
				System.out.println("그런 연산자는 없습니다!");
			else
				return foundOper;
		}
	}

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		BigDecimal v1 = BigDecimal.valueOf(0);
		System.out.println("계산기를 시작합니다 (종료: .)");
		boolean isStartWithOperation = false;
		while (true) {
			try {
				if (isStartWithOperation) {
					isStartWithOperation = false;
				} else {
					v1 = getNumber(scanner, 1, v1);
				}
				Operation oper = getOperation(scanner);
				BigDecimal v2 = getNumber(scanner);
				v1 = oper.apply(v1, v2);
				System.out.printf(" ==> %.2f%n", v1);
			} catch (ArithmeticException e) {
				System.out.println("잘못된 연산: " + e.getMessage());
				isStartWithOperation = true;
			} catch (IllegalStateException e) {
				if (e.getMessage().equals("END"))
					System.out.println("계산기를 종료합니다!");
				else
					System.out.println(e.getMessage());

				break;
			} catch (Exception e) {
				e.printStackTrace(System.out);
			}
		}
		scanner.close();
	}
}
