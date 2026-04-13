package com.hana8.demo.common.enums;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import lombok.Getter;

@Getter
public enum Lang {
	DEFULT("한국어", Locale.KOREAN, "ko"),
	ENGLISH("English", Locale.ENGLISH, "en"),
	CHINESE("中國", Locale.CHINESE, "zh"),
	GERMAN("Deutsch", Locale.GERMAN, "de"),
	ITALIAN("Italiano", Locale.ITALIAN, "it"),
	FRENCH("Français", Locale.FRENCH, "fr");
	// …

	private final String language;
	private final Locale locale;
	private final String lang;

	Lang(String language, Locale locale, String lang) {
		this.language = language;
		this.locale = locale;
		this.lang = lang;
	}

	public static Map<String, String> getLangs() {
		Map<String, String> map = new HashMap<>();
		Arrays.stream(values()).forEach(val ->
			map.put(val.language, val.lang));
		return map;
	}
}
