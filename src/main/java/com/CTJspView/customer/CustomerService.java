package com.CTJspView.customer;

import com.commercetools.api.models.customer.Customer;
import com.commercetools.api.models.customer.CustomerDraft;
import com.commercetools.api.models.customer.CustomerSignInResult;
import com.commercetools.api.models.customer.CustomerSignin;
import com.commercetools.api.models.me.MyCustomerDraft;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    CustomerRepository repository;
    public CustomerSignInResult customerLogin(String email, String password) {
        CustomerSignin signIn = CustomerSignin.builder()
                .email(email)
                .password(password)
                .build();
        return repository.customerLogin(signIn);
    }

    public CustomerSignInResult customerSignUp(CustomerDto dto) {

       CustomerDraft signInResult = CustomerDraft.builder()
                .firstName(dto.getFirstName())

                .email(dto.getEmail())
                .password(dto.getPassword())
                .build();

        return repository.customerSignUp(signInResult);
    }
    public Customer createCustomer(CustomerDto dto){
        CustomerDraft customerDraft= CustomerDraft.builder()
                .firstName(dto.getFirstName())
                .email(dto.getEmail())
                .password(dto.getPassword())
                .build();
        return repository.createCustomer(customerDraft);
    }
}
