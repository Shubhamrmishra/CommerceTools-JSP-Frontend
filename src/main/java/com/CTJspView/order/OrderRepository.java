package com.CTJspView.order;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.order.Order;
import com.commercetools.api.models.order.OrderFromCartDraft;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepository {

    @Autowired
    ProjectApiRoot apiRoot;


    public Order createOrder(OrderFromCartDraft order) {
        return apiRoot.orders().post(order).executeBlocking().getBody();
    }
}
