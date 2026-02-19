package com.hana8.hello.trythis;

import java.lang.reflect.Field;
import java.util.Arrays;

public class Reflects {
	public static void makeNotNullFields(Object obj) {
		Class<?> cls = obj.getClass();
		makeNotNullFields(cls, obj);
	}

	public static void makeNotNullFields(Class<?> cls, Object obj) {
		if (cls == Object.class || obj == null)
			return;

		for (Field f : cls.getDeclaredFields()) {
			f.setAccessible(true);
			try {
				if (f.get(obj) != null)
					continue;

				System.out.println(f.getName() + ", f.canAccess(obj) = " + f.canAccess(obj) + ',' + Arrays.toString(
					f.getDeclaredAnnotations()));
				switch (f.getType().getSimpleName()) {
					case "String" -> f.set(obj, "");
					case "Integer" -> f.set(obj, 0);
					case "Boolean" -> f.set(obj, false);
					case "Double" -> f.set(obj, 0.0);
					case "Byte" -> f.set(obj, (byte)0);
					case "Character" -> f.set(obj, '0');
					case "Short" -> f.set(obj, (short)0);
					case "Float" -> f.set(obj, 0.0f);
					case "Long" -> f.set(obj, 0L);
					default -> {
						if (f.getType().isEnum()) {
							Object[] enums = f.getType().getEnumConstants();
							if (enums.length > 0)
								f.set(obj, enums[0]);
						} else {
							Object o = f.getType().getDeclaredConstructor().newInstance();
							makeNotNullFields(o);
							f.set(obj, o);
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace(System.out);
			}

			makeNotNullFields(cls.getSuperclass(), obj);
		}
	}

	public static void main(String[] args) {
		Reflection r = new Reflection();
		System.out.println("before = " + r);

		Reflects.makeNotNullFields(r);
		System.out.println("after = " + r);
	}
}
