package com.hana8.demo.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import io.swagger.v3.oas.models.servers.Server;

@Configuration
public class SwaggerConfig {
	@Bean
	public OpenAPI openAPI() {
		Server devServer = new Server().url("/").description("개발 서버");
		Server prodServer = new Server().url("/api").description("운영 서버");

		return new OpenAPI()
			.servers(List.of(devServer, prodServer))
			.info(getInfo())
			.addSecurityItem(new SecurityRequirement().addList("bearerAuth"))
			.components(new Components()
				.addSecuritySchemes("bearerAuth",
					new SecurityScheme()
						.type(SecurityScheme.Type.HTTP)
						.scheme("bearer")
						.bearerFormat("JWT")
				)
			);
	}

	private Info getInfo() {
		return new Info()
			.version("0.1.0")
			.title("SpringDemo APIs")
			.description("Hanaro 8 Project API Documents")
			.contact(new Contact().name("BE Team").email("hana8@hanabank.com"))
			.license(new License().name("Apache 2.0"));
	}

}
