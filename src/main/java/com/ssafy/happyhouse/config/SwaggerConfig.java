package com.ssafy.happyhouse.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


//3.0.0 http://localhost:8080/ws/swagger-ui/index.html
//2.9.2 http://localhost:8080/ws/swagger-ui.html
@Configuration
@EnableSwagger2
public class SwaggerConfig {
	@Bean
	public Docket api() {
		final ApiInfo apiInfo=new ApiInfoBuilder()
				.title("apt API")
				.description("<h3>워크샵에서 사용되는 RestApi에 대한 문서를 제공한다.</h3>")
				.contact(new Contact("SSAFY", "https://edu.ssafy.com", "ssafy@ssafy.com"))
				.license("MIT License")
				.version("5.0")
				.build();
		return new Docket(DocumentationType.SWAGGER_2)
				.apiInfo(apiInfo)
				.select()
				.apis(RequestHandlerSelectors.basePackage("com.ssafy.happyhouse.controller"))
				//.paths(PathSelectors.ant("/*/bookapi/**")) //3.0.0
				//.paths(PathSelectors.ant("/bookapi/**")) //2.9.2
				.paths(PathSelectors.ant("/**/houseapi/**")) //3.0.0 or 2.9.2
				.build();
	}
}
