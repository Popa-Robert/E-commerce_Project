package project.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import project.ecommerce.entity.Cart;

public interface CartRepository extends JpaRepository<Cart, Long> {
}
