package org.party.festival.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import nz.net.ultraq.thymeleaf.LayoutDialect;

@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {
	
	@Autowired
	private Environment environment;

	@Bean
	public LayoutDialect layoutDialect() {
	  return new LayoutDialect();
	}
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		
		String imagesDirectory = environment.getProperty("festival.images.directory");
		
	    registry.addResourceHandler("/festivalImages/**")
	            .addResourceLocations("file://" + imagesDirectory);
	}
}
