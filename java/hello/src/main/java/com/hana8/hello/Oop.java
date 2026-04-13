package com.hana8.hello;

import java.util.ArrayList;
import java.util.List;

public class Oop {
	public static void main(String[] args) {
		List<? extends Animal> extdAni = new ArrayList<Dog>();
		// extdAni.add(new Dog()); // 안됨! (: Animal의 자식이 Cat도 있음!)
		List<? extends Animal> extdAni2 = new ArrayList<Cat>();
		List<? extends Animal> extdAni3 = new ArrayList<Animal>();
		// List<? extends Animal> extdAni4 = new ArrayList<Object>(); // 안됨(: Animal 보다 큼)

		// List<? super Animal> superAni = new ArrayList<Dog>();
		List<? super Animal> superAni = new ArrayList<Animal>();
		superAni.add(new Animal());
		superAni.add(new Dog()); // 쓸 때는 Covaiance 적용!
		System.out.println("superAni.size() = " + superAni.size());

		// Animal first = superAni.get(0); // 안됨!(: Animal보다 부모만 가능)
		Object second = superAni.get(1);
		System.out.println("second = " + second);

		List<? super Animal> superAni2 = new ArrayList<Object>();
		superAni2.add(new Animal());
		superAni2.add(new Dog());
		System.out.println("superAni2.size() = " + superAni2.size());

		List<String> strs = new ArrayList<>();
		strs.add("ABC");
		System.out.println("strs.size() = " + strs.size());
	}
}

class Animal {
}

class Dog extends Animal {
}

class Cat extends Animal {
}
