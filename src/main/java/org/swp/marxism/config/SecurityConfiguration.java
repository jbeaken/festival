package org.swp.marxism.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private Environment environment;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		String password = environment.getProperty("spring.security.user.password");
		String username = environment.getProperty("security.user.username");
		auth.inMemoryAuthentication().withUser( username ).password( password ).authorities("ROLE_MARXISM");
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
	    web.ignoring().antMatchers("/img/**","/css/**","/plugins/**","/js/**","/","fonts/**");
	}	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().anyRequest().permitAll();
		
		http.antMatcher("/bookings/**").authorizeRequests().anyRequest().hasRole("MARXISM").and().httpBasic();
	}
}
