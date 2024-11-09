package project.ecommerce.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// Marks this class as a Spring configuration class
@Configuration
public class WebConfig implements WebMvcConfigurer {

// Defines a WebMvcConfigurer bean for CORS configuration
	@Bean
	WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurer() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
// Configures CORS permissions for all endpoints in the API
				registry.addMapping("/**") // Allows access to all routes (URLs)
						.allowedOrigins("http://localhost:4200") // Restricts requests to this specific URL
						.allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS") // Specifies allowed HTTP methods
						.allowedHeaders("*") // Allows all HTTP headers in requests
						.allowCredentials(true); // Allows credentials such as cookies to be included in requests
			}
		};
	}
}