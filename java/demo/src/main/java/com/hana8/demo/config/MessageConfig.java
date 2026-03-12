package com.hana8.demo.config;

import java.util.Locale;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Configuration
public class MessageConfig {
	@Bean
	public LocaleResolver localeResolver() {
		SessionLocaleResolver lr = new SessionLocaleResolver();
		lr.setDefaultLocale(Locale.ENGLISH);
		return lr;
	}

}
