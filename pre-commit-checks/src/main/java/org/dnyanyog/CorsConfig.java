package org.dnyanyog;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;

@Configuration
public class CorsConfig {

  @Bean
  public CorsConfiguration corsConfiguration() {
    CorsConfiguration corsConfiguration = new CorsConfiguration();
    corsConfiguration.addAllowedOrigin("*"); // Allow requests from any origin
    corsConfiguration.addAllowedMethod("*"); // Allow all HTTP methods
    corsConfiguration.addAllowedHeader("*"); // Allow all headers
    corsConfiguration.addExposedHeader("*"); // Expose all headers
    corsConfiguration.setMaxAge(3600L); // Set max age of CORS pre-flight request
    corsConfiguration.setAllowCredentials(true); // Allow credentials
    return corsConfiguration;
  }
}
