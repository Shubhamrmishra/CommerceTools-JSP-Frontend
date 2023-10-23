package com.CTJspView.order;

import com.commercetools.api.models.order.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class OrderController {

    @Autowired
    OrderService service;

    @GetMapping("/order")
    public String createOrder(Model model){
        Order order = service.createOrder();
        model.addAttribute("order", order);
        return "order";
    }

}
