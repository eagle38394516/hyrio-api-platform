package xyz.hyrio.platform;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"xyz.hyrio.platform", "xyz.hyrio.common.components"})
public class ApiPlatformApplication {
    public static void main(String[] args) {
        SpringApplication.run(ApiPlatformApplication.class, args);
    }
}
