package com.CTJspView.carts;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartDto {
    private String productId;
    private String key;
    private String currencyCode;
    private String storeKey;
    private String id;
}
