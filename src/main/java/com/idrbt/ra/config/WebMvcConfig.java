package com.idrbt.ra.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
public class WebMvcConfig extends WebMvcConfigurerAdapter {
        @Override
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
                registry.addResourceHandler("/src/main/webapp/bootstrap/**").addResourceLocations("/bootstrap/js/");
                registry.addResourceHandler("/src/main/webapp/bootstrap/**").addResourceLocations("/bootstrap/css/");
                registry.addResourceHandler("/src/main/webapp/jQuery/**").addResourceLocations("/jQuery/");
                registry.addResourceHandler("/src/main/webapp/styles/**").addResourceLocations("/styles/");
        }
        @Override
        public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
            configurer.enable();
        }
}
