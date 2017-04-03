package com.art.consulting.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;




@Configuration
@EnableWebSecurity
@ImportResource("/WEB-INF/spring/root-context.xml")
public class SecurityConfiguration  extends WebSecurityConfigurerAdapter {
	@Autowired
    CustomSuccessHandler customSuccessHandler;
	 
	 @Autowired
	 private DataSource dataSource;
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth)
			throws Exception {
		/*  auth.inMemoryAuthentication()
	      .withUser("cheikh").password("123").roles("Student")
	      .and()
	      .withUser("admin").password("123").roles("ADMIN");*/
		
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(
			"select username,password,enabled from Student where username=?")
		.authoritiesByUsernameQuery(
			"select username,role from Student where username=?");
		
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(
			"select username,password,enabled from Teacher where username=?")
		.authoritiesByUsernameQuery(
			"select username,role from Teacher where username=?");
	}
/*	
	@Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }
    */

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()  
		.antMatchers("/*rim_learning_spring_mvc*/**").access("hasRole('USER')")
		
		
		.and()
		.formLogin()
		 .loginPage("/login")
		 .failureUrl("/login_error")
		 .successHandler(customSuccessHandler)
		 .usernameParameter("user")
		 .passwordParameter("pass");
	    http.csrf().disable();
	  
	}

}
