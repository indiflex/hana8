package com.hana8.demo.common.serializer;

import tools.jackson.core.JacksonException;
import tools.jackson.core.JsonGenerator;
import tools.jackson.databind.SerializationContext;
import tools.jackson.databind.ser.std.StdSerializer;

public class CardnoSerializer extends StdSerializer<String> {
	protected CardnoSerializer() {
		super(String.class);
	}

	@Override
	public void serialize(String value, JsonGenerator gen, SerializationContext provider) throws JacksonException {
		if (value == null) {
			gen.writeNull();
			return;
		}

		String replStr = value.replaceAll("[\\s-]", "");
		int start = replStr.length() - 4 - 6;
		String v = replStr.substring(0, start) + "*".repeat(6) + replStr.substring(start + 6);
		gen.writeString(v.replaceAll("(.{4})(?=.)", "$1-"));

		// 16 자리 고정형
		// gen.writeString(replStr.replaceAll("(\\d{4})(\\d{4})(\\d{4})(\\d{4})", "$1-$2-$3-$4"));
	}

}
