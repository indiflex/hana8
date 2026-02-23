package com.hana8.hello.trythis;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hana8.hello.annotaions.AnnotationException;
import com.hana8.hello.annotaions.In;
import com.hana8.hello.annotaions.Max;
import com.hana8.hello.annotaions.Min;
import com.hana8.hello.annotaions.NotNull;

public class Reflects {
	public static Map<String, List<String>> validate(Object obj) {
		Map<String, List<String>> msgs = new HashMap<>();

		try {
			for (Field f : obj.getClass().getDeclaredFields()) {
				f.setAccessible(true);
				Annotation[] annotations = f.getAnnotations();
				if (annotations.length == 0)
					continue;

				String fname = f.getName();
				Object fval = f.get(obj);
				for (Annotation ann : annotations) {
					String msg = switch (ann.annotationType().getSimpleName()) {
						case "NotNull" -> {
							if (fval != null)
								yield null;
							NotNull annotation = f.getAnnotation(NotNull.class);
							yield annotation.value();
						}
						case "Min" -> Min.Validate.validate(f, fval);
						case "Max" -> Max.Validate.validate(f, fval);
						case "In" -> In.Validate.validate(f, fval);
						default -> throw new AnnotationException("Unknown Annotation!");
					};

					if (msg != null) {
						msgs.computeIfAbsent(fname, k -> new ArrayList<>());
						msgs.get(fname).add(msg);
					}
				}

			}
		} catch (Exception e) {
			throw new AnnotationException(e.getMessage());
		}

		return msgs;
	}

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

		System.out.println("============================");
		Reflection r2 = new Reflection(6, "Kimm");
		r2.setRate(2.9);
		// Reflection r2 = new Reflection(null, null);
		Map<String, List<String>> msgs = Reflects.validate(r2);
		System.out.println("msgs = " + msgs);
	}
}
