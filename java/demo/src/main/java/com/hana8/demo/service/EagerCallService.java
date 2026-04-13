package com.hana8.demo.service;

import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
// @Scope(ConfigurableBeanFactory.SCOPE_SINGLETON)
public class EagerCallService {
	// public EagerCallService() {
	// 	System.out.println("------------ EagerCallService!");
	// }
}
