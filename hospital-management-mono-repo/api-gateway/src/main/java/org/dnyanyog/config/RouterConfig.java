package org.dnyanyog.config;

import java.util.Random;

import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;

@Configuration
public class RouterConfig {
  @Bean
  public RouteLocator customRouteLocator(RouteLocatorBuilder builder) {
    return builder
        .routes()
        .route(
                    "healthy",
                    r ->
                        r.path("/api/v1/healthy") // DUMMY IMPLEMENTATION
                            .filters(
                                f ->
                                    f.filter(
                                        (exchange, chain) -> {
                                        int randomNumber = new Random().nextInt();
                                        if (randomNumber % 2 == 0) {
                                            exchange.getResponse().setStatusCode(HttpStatus.OK); // Return 200
                                            return exchange.getResponse().setComplete();
                                        } else {
                                            exchange.getResponse().setStatusCode(HttpStatus.NOT_FOUND); // Return 404
                                            return exchange.getResponse().setComplete();
                                        }
                                        }))
                            .uri("http://localhost:8081"))
        // directory service
        .route(
            "directory_login_route",
            r -> r.path("/api/v1/directory/validate/**").uri("http://localhost:8081"))
        .route(
            "directory_add_route", r -> r.path("/api/v1/directory/**").uri("http://localhost:8081"))

        // patient service
        .route("patient_add_route", r -> r.path("/api/v1/patient/**").uri("http://localhost:8082"))

        // appointment service
        .route(
            "appointment_add_route",
            r -> r.path("/api/v1/appointment/**").uri("http://localhost:8085"))

        // case service
        .route("case_add_route", r -> r.path("/api/v1/case/**").uri("http://localhost:8084"))
        .build();
  }
}
