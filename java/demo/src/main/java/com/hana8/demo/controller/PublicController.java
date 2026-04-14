package com.hana8.demo.controller;

import com.hana8.demo.common.enums.Lang;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

@RestController
@RequestMapping("/apis/public")
@RequiredArgsConstructor
public class PublicController {
    private static final String SessLocale = SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME;

    private final MessageSource ms;

    @GetMapping("langs")
    public Map<String, Object> langs(HttpSession session) {
        Map<String, Object> res = new LinkedHashMap<>();
        res.put("Langs", Lang.values());
        res.put("Locales", Lang.getLangs());

        Locale currLang = (Locale) session.getAttribute(SessLocale);
        if (currLang == null)
            currLang = Locale.getDefault();
        res.put("currLang", currLang);

        res.put("siteTitle", ms.getMessage("site.title", null, currLang));

        return res;
    }

    @PostMapping("setlang")
    public ResponseEntity<?> setLang(@RequestHeader("Accept-Language") String lang, HttpSession session) {
        Locale locale = Locale.forLanguageTag(lang);
        session.setAttribute(SessLocale, locale);
        return ResponseEntity.ok((Locale) session.getAttribute(SessLocale));
    }

}
