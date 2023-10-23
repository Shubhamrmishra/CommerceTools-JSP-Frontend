package com.CTJspView.carts;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.cart.Cart;
import com.commercetools.api.models.cart.CartDraft;
import com.commercetools.api.models.cart.CartUpdate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartRepository {
    @Autowired
    ProjectApiRoot apiRoot;
    public Cart createCart(CartDraft draft) {
        return apiRoot.carts().post(draft).executeBlocking().getBody();
    }

    public Cart updateLineItem(CartUpdate cartUpdate) {
        return apiRoot.carts().withId("199d1a46-6be9-449e-931a-4c5a229542f1").post(cartUpdate).executeBlocking().getBody();
    }

    public Cart getCartById() {
        return apiRoot.carts().withId("199d1a46-6be9-449e-931a-4c5a229542f1").get().executeBlocking().getBody();
    }

    public Cart deleteLineItems(CartUpdate cartUpdate) {
        return apiRoot.carts().withId("199d1a46-6be9-449e-931a-4c5a229542f1").post(cartUpdate)
                .executeBlocking().getBody();

    }
}
