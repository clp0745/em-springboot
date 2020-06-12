package com.clp;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class SpringbootStartApplication extends SpringBootServletInitializer {


    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder){
        return builder.sources(SpringbootStartApplication.class);
    }


}
