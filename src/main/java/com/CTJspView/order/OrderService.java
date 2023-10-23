package com.CTJspView.order;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.cart.Cart;
import com.commercetools.api.models.cart.CartResourceIdentifier;
import com.commercetools.api.models.message.OrderLineItemAddedMessage;
import com.commercetools.api.models.order.Order;
import com.commercetools.api.models.order.OrderFromCartDraft;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class OrderService {

    @Autowired
    ProjectApiRoot apiRoot;

    @Autowired
    OrderRepository repository;
    public Order createOrder() {
        Cart body = apiRoot.carts().withId("199d1a46-6be9-449e-931a-4c5a229542f1").get().executeBlocking().getBody();
        Long version = body.getVersion();
        String id = body.getId();

        Random random = new Random();
        int randomNumber = random.nextInt(9000) + 1000;
        String orderNumber = String.valueOf(randomNumber);

        OrderFromCartDraft order = OrderFromCartDraft.builder()
                .version(version)
                .orderNumber(orderNumber)
                .cart(CartResourceIdentifier.builder()
                        .id(id)
                        .build())

                .build();

        return repository.createOrder(order);
    }
}
