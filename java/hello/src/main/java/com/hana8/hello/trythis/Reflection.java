package com.hana8.hello.trythis;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(callSuper = true)
public class Reflection extends Parent {
	private String name;
	private Integer deptId;
}
