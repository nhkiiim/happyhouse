package com.ssafy.happyhouse;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ssafy.happyhouse.interceptor.SessionInterceptor;

@SpringBootApplication
@EnableAspectJAutoProxy
@MapperScan(basePackages = "com.ssafy.happyhouse.model.repo")
public class HappyhousefinalApplication implements WebMvcConfigurer{
	@Autowired
	private SessionInterceptor si;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(si).addPathPatterns("/regist");
	}
	
	public static void main(String[] args) {
		SpringApplication.run(HappyhousefinalApplication.class, args);
	}
}
