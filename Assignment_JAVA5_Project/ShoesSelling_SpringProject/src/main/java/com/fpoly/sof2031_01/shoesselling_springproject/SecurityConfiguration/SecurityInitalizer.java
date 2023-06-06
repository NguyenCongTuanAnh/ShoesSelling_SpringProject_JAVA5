package com.fpoly.sof2031_01.shoesselling_springproject.SecurityConfiguration;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

@Configuration
public class SecurityInitalizer extends AbstractSecurityWebApplicationInitializer {


    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

    }
}
