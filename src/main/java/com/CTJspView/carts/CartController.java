package com.CTJspView.carts;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.cart.Cart;
import com.commercetools.api.models.cart.CartPagedQueryResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class CartController {

    @Autowired
    CartService service;

    @Autowired
    ProjectApiRoot apiRoot;

//    @PostMapping("/cart")
//    public Object createCart() {
//        return service.mergeCartState();
//    }
//
//    @GetMapping("/cart")
//    public CartPagedQueryResponse queryCart() {
//        return apiRoot.carts().get().executeBlocking().getBody();
//    }

    @GetMapping("/cart")
    public String getCart(Model model) {
        Cart cartById = service.getCartById();
        model.addAttribute("lineItem", cartById);
        return "Cart";
    }

    @GetMapping("/addLineItem/{id}")
    public String updateLineItem(@PathVariable String id, Model model) {
        Cart cart = service.updateLineItem(id);
        model.addAttribute("lineItem", cart);
        return "Cart";
    }

    @GetMapping("/cart/{id}")
    public String deleteLineItems(@PathVariable String id, Model model) {
        Cart cart = service.deleteLineItems(id);
        model.addAttribute("lineItem", cart);
        return "Cart";
    }


}
