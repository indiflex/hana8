package com.hana8.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.hana8.demo.controller.GreetingController;
import com.hana8.demo.controller.HelloController;
import com.hana8.demo.service.HelloService;
import com.hana8.demo.service.HelpCallService;
import com.hana8.demo.service.LazyCallService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(DemoApplication.class, args);

		HelloController helloBean = ctx.getBean(HelloController.class);
		log.debug("hello = {}", helloBean.hello());

		HelloService helloService = ctx.getBean(HelloService.class);
		log.debug("helloService = {}", helloService.sayHello());
		HelloService helloService2 = (HelloService)ctx.getBean("hello-service");
		log.debug("helloService2 = {}", helloService2.sayHello());

		// GreetingService greetingService = ctx.getBean(GreetingService.class);
		// GreetingService greetingService = ctx.getBean(HelloCallService.class);
		GreetingController greetingService = ctx.getBean(GreetingController.class);
		log.debug("greetingService = {}", greetingService.call());

		HelpCallService help = ctx.getBean(HelpCallService.class);
		log.debug("help = {}", help.call());

		// System.out.println(
		// 	"ctx.getBean(EagerCallService.class).hashCode() = " + ctx.getBean(EagerCallService.class).hashCode());
		// System.out.println(
		// 	"ctx.getBean(EagerCallService.class).hashCode() = " + ctx.getBean(EagerCallService.class).hashCode());
		// System.out.println(
		// 	"ctx.getBean(EagerCallService.class).hashCode() = " + ctx.getBean(EagerCallService.class).hashCode());

		LazyCallService lazy = ctx.getBean(LazyCallService.class);
		log.debug("lazy = {}", lazy.call());
		log.debug("lazy.name = {}", lazy.getName());
		log.debug("lazy.name = {}", lazy.getPassword());
		log.debug("lazy.emailname = {}", lazy.getEmailName());
		log.debug("lazy.emailpwd = {}", lazy.getEmailPassword());
	}

}
