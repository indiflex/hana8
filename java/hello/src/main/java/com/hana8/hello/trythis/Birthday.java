package com.hana8.hello.trythis;

import java.time.DayOfWeek;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.PriorityQueue;

public class Birthday {
	// List<LocalDate> holidays = Arrays.asList(new LocalDate[]{LocalDate.of(2026, 3, 25)});
	static final List<LocalDate> holidays = List.of(LocalDate.of(2026, 3, 25));

	public static void main(String[] args) {
		LocalDateTime now = LocalDateTime.now();
		LocalDate nowld = now.toLocalDate();
		LocalDateTime birthdt = LocalDateTime.of(2025, 1, 5, 8, 30);
		LocalDate birthday = birthdt.toLocalDate();

		Period period = Period.between(birthday, nowld);
		int y = period.getYears();
		int m = period.getMonths();
		int d = period.getDays();
		Duration dur = Duration.between(birthdt, now);
		long h = dur.toHours() % 24;
		long mm = dur.toMinutes() % 60;
		long s = dur.toSeconds() % 60;

		System.out.printf("1. 태어난지 %d년 %d개월 %d일 %d시간 %d분 %d초 지났습니다!%n", y, m, d, h, mm, s);

		LocalDate nextBirth = birthday.plusYears(nowld.getYear() - birthday.getYear());
		if (nextBirth.isBefore(now.toLocalDate())) {
			nextBirth = nextBirth.plusYears(1);
		}
		System.out.println("nextBirth = " + nextBirth);
		System.out.println(
			"Period.between(nowld, nextBirth).getDays() = " + Period.between(nowld, nextBirth).getDays());

		System.out.println("2. 다음 생일까지 남은 일: " + ChronoUnit.DAYS.between(nowld, nextBirth));

		System.out.println(
			"3. 지금 밀라노 시간: " + ZonedDateTime.now(ZoneId.of("Europe/Rome"))
				.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));

		LocalDate start19_1 = LocalDate.of(2026, 4, 13).minusDays(1);
		LocalDate end19_1 = LocalDate.of(2026, 4, 17).plusDays(1);

		LocalDate start = YearMonth.of(2026, 3).atDay(23);
		LocalDate end = YearMonth.of(2026, 4).atDay(20);

		int workHour = 0;
		// while(!ld.isAfter(end))
		for (LocalDate ld = start; ld.isBefore(end); ld = ld.plusDays(1)) {
			// System.out.println("ld = " + ld);
			if (isWeekendOrHoliday(ld))
				continue;

			// workHour += (ld.isAfter(start19.minusDays(1)) && ld.isBefore(end19.plusDays(1))) ? 9 : 8;
			workHour += (ld.isAfter(start19_1) && ld.isBefore(end19_1)) ? 9 : 8;
			System.out.println("ld = " + ld + ',' + ld.getDayOfWeek());
		}

		if (!isWeekendOrHoliday(end)) {
			workHour += 7;
		}

		System.out.println("workHour = " + workHour);
		// var set = new TreeSet<>();
		var set = new PriorityQueue<>();
		set.add(4);
		System.out.println("set = " + set);
		set.add(5);
		System.out.println("set = " + set);
		set.add(1);
		System.out.println("set = " + set);
		set.add(2);
		System.out.println("set = " + set);
		set.add(3);
		System.out.println("set = " + set);
		set.add(2);
		System.out.println("set = " + set);
	}

	private static boolean isWeekendOrHoliday(LocalDate ld) {
		DayOfWeek dayOfWeek = ld.getDayOfWeek();
		return dayOfWeek == DayOfWeek.SATURDAY || dayOfWeek == DayOfWeek.SUNDAY || holidays.contains(ld);
	}
}
