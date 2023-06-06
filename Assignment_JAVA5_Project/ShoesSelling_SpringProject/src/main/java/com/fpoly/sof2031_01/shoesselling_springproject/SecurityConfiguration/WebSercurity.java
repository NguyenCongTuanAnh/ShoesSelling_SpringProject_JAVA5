package com.fpoly.sof2031_01.shoesselling_springproject.SecurityConfiguration;


import jakarta.activation.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;


@Configuration
@EnableWebSecurity
public class WebSercurity extends WebSecurityConfigurerAdapter {

    @Autowired


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().getUserDetailsService()
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable().authorizeRequests().antMatchers("/admin/**").hasRole("admin")
                .and().authorizeRequests().antMatchers("/user/**").hasRole("user")
                .anyRequest().permitAll().and().formLogin()
                .loginPage("/dang-nhap").loginProcessingUrl("/login")
                .usernameParameter("username").passwordParameter("password").defaultSuccessUrl("/product-add-view")
                .failureUrl("/dang-nhap?error=falsed").and().exceptionHandling().accessDeniedPage("/dang-nhap?error=access_denied");
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/static/**");
    }
}
