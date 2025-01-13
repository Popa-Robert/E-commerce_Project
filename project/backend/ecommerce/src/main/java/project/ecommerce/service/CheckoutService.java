package project.ecommerce.service;

import project.ecommerce.dto.Purchase;
import project.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
