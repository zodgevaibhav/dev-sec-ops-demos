package org.dnyanyog.config;

import com.zaxxer.hikari.HikariDataSource;
import io.micrometer.core.instrument.MeterRegistry;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DataSourceConfig {

    @Bean
    public HikariDataSource hikariDataSource(MeterRegistry meterRegistry) {
        HikariDataSource dataSource = new HikariDataSource();
        dataSource.setMetricRegistry(meterRegistry);
        return dataSource;
    }
}
