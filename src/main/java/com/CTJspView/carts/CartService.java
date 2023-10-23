package com.CTJspView.carts;

import com.commercetools.api.client.ByProjectKeyMeCartsReplicatePost;
import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.cart.*;
import com.commercetools.api.models.channel.ChannelResourceIdentifier;
import com.commercetools.api.models.me.ReplicaMyCartDraft;
import com.commercetools.api.models.store.StoreResourceIdentifier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
    @Autowired
    ProjectApiRoot apiRoot;
    @Autowired
    CartRepository repository;


    public Cart mergeCartState() {


        return null;
    }

    public Cart updateLineItem(String id) {

        Cart body = apiRoot.carts().withId("199d1a46-6be9-449e-931a-4c5a229542f1").get().executeBlocking().getBody();
        Long version = body.getVersion();

//        body.getLineItems().iterator().next().getId()


        CartUpdate cartUpdate = CartUpdate.builder()
                .version(version)
                .actions(CartUpdateAction.addLineItemBuilder()
                        .variantId(1L)
                        .quantity(1L)
                       // .sku(sku)
                        .productId(id)
                        .build())
                .build();
        return repository.updateLineItem(cartUpdate);
    }

    public Cart getCartById() {
        return repository.getCartById();

    }

    public Cart deleteLineItems(String id) {

        Cart body = apiRoot.carts().withId("199d1a46-6be9-449e-931a-4c5a229542f1").get().executeBlocking().getBody();
        Long version = body.getVersion();

        CartUpdate cartUpdate = CartUpdate.builder()
                .version(version)
                .actions(CartUpdateAction.removeLineItemBuilder().lineItemId(id).build())
                .build();
        return repository.deleteLineItems(cartUpdate);

    }


}