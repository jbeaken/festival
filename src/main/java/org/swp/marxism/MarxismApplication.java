package org.swp.marxism;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.swp.marxism.util.HtmlBuilder;

@SpringBootApplication(scanBasePackages = { "org.swp.marxism" })
@EntityScan(basePackages =  "org.swp.marxism" )
public class MarxismApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MarxismApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(MarxismApplication.class, args);
	}
	
	@Bean
	public HtmlBuilder htmlBuilder() {
		return new HtmlBuilder();
	}
}
