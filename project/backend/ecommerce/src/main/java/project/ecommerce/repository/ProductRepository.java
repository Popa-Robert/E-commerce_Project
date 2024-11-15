package project.ecommerce.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

import project.ecommerce.entity.Product;

@CrossOrigin("http://localhost:4200")

public interface ProductRepository extends JpaRepository<Product, Long> {

	Page<Product> findByCategoryId(@RequestParam("id") Long id, Pageable pageable);

	Page<Product> findByNameContainingIgnoreCase(@RequestParam("name") String name, Pageable pageable);

}