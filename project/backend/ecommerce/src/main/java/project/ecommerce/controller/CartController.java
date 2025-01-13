package project.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import project.ecommerce.entity.Cart;
import project.ecommerce.service.CartService;

@RestController
@RequestMapping("/api/cart")
@CrossOrigin("http://localhost:4200")
public class CartController {

    @Autowired
    private CartService cartService;

    @GetMapping("/{cartId}")
    public Cart getCart(@PathVariable Long cartId) {
        return cartService.getCart(cartId);
    }

    @PostMapping("/{cartId}/add")
    public Cart addProductToCart(
            @PathVariable Long cartId,
            @RequestParam Long productId,
            @RequestParam int quantity) {
        return cartService.addProductToCart(cartId, productId, quantity);
    }

    @DeleteMapping("/{cartId}/remove")
    public Cart removeProductFromCart(
            @PathVariable Long cartId,
            @RequestParam Long productId) {
        return cartService.removeProductFromCart(cartId, productId);
    }
}
