package org.swp.marxism;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"org.swp.marxism"})
public class MarxismApplication {

	public static void main(String[] args) {
		SpringApplication.run(MarxismApplication.class, args);
	}
}
