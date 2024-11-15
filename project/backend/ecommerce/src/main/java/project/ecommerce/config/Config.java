package project.ecommerce.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import jakarta.persistence.EntityManager;
import jakarta.persistence.metamodel.Type;

@Configuration
public class Config implements RepositoryRestConfigurer {

	@Configuration
	public class MyDataRestConfig implements RepositoryRestConfigurer {

	    @Autowired
	    private EntityManager entityManager;

	    @Override
	    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
	        config.exposeIdsFor(entityManager.getMetamodel().getEntities().stream().map(Type::getJavaType).toArray(Class[]::new));
	    }
	}
}