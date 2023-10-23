package com.CTJspView.customer;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.customer.Customer;
import com.commercetools.api.models.customer.CustomerDraft;
import com.commercetools.api.models.customer.CustomerSignInResult;
import com.commercetools.api.models.customer.CustomerSignin;
import com.commercetools.api.models.me.MyCustomerDraft;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerRepository {

    @Autowired
    ProjectApiRoot apiRoot;
    public CustomerSignInResult customerLogin(CustomerSignin signin) {

        return apiRoot.login().post(signin).executeBlocking().getBody();

    }
    public CustomerSignInResult customerSignUp(CustomerDraft signInResult) {
        return apiRoot.customers().post(signInResult).executeBlocking().getBody();
    }


    public Customer createCustomer(CustomerDraft customerDraft) {
        return apiRoot.customers()
                .post(customerDraft)
                .executeBlocking()
                .getBody()
                .getCustomer();
    }
}
