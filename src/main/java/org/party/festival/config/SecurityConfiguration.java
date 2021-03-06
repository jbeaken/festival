package org.party.festival.config;

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
		
		auth.inMemoryAuthentication().withUser( username ).password( "{noop}" + password ).authorities("ROLE_MARXISM");
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
	    web.ignoring().antMatchers("/img/**", "/css/**", "/plugins/**", "/js/**", "/", "/book", "/fonts/**");
	}	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		 http.authorizeRequests()
		 	.antMatchers("/bookings/**").hasRole("MARXISM")
		 	.anyRequest().permitAll()
		 	.and().httpBasic();
		 
		 //Required for sendEmail and feedbackSha POST html forms
		 http.csrf().disable();
	}
}
