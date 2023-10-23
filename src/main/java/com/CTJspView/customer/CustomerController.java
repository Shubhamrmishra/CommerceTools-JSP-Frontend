package com.CTJspView.customer;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.customer.Customer;
import com.commercetools.api.models.customer.CustomerSignInResult;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CustomerController {

    @Autowired
    ProjectApiRoot apiRoot;

    @Autowired
    CustomerService service;

    @GetMapping("/login")
    public String login(){

        return "signIn";
    }









//    @GetMapping("/profile")
//    public ResponseEntity<?> getCustomerProfile(HttpServletRequest request) {
//        if (isCustomerLoggedIn(request)) {
//            Customer customer = getCustomerFromDatabase(request);
//            if (customer != null) {
//                return ResponseEntity.ok(customer);
//            } else {
//                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error retrieving customer profile");
//            }
//        } else {
//            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Customer not logged in");
//        }
//    }
//
//    @PostMapping("/login")
//    public ResponseEntity<?> loginCustomer(@RequestParam("email") String email, @RequestParam("password") String password,@RequestBody CustomerDto dto) {
//        CustomerSignInResult customer = service.customerLogin(email, password);
//        if (customer != null) {
//            return ResponseEntity.ok(customer);
//        }else {
//            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password");
//        }
//    }
//
//    @PostMapping("/create-customer")
//    public ResponseEntity<?> createCustomer(@RequestBody CustomerDto dto) {
//        if (!isCustomerExists(dto.getEmail())) {
//            Customer customer = saveCustomerToDatabase(dto);
//            if (customer != null) {
//                return ResponseEntity.ok(customer);
//            } else {
//                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error creating customer");
//            }
//        } else {
//            return ResponseEntity.status(HttpStatus.CONFLICT).body("Customer already exists");
//        }
//    }
//
//    private boolean isCustomerLoggedIn(HttpServletRequest request) {
//        // Check if customer is logged in based on your authentication mechanism
//        // For example, check if a session or token exists
//        // Return true if customer is logged in, false otherwise
//
//
//        return false;
//    }
//
//    private Customer getCustomerFromDatabase(HttpServletRequest request) {
//        // Retrieve customer information from the database based on the logged-in customer's identifier
//        // For example, retrieve customer by email or ID
//        // Return the customer object
//
//        Customer customer = apiRoot.customers().withId("").get().executeBlocking().getBody();
//        return null;
//    }
//
//    private Customer authenticateCustomer(String email, String password) {
//        // Perform authentication logic to check if the provided credentials are valid
//        // For example, query the database to find a customer with matching email and password
//        // Return the customer object if authentication is successful, null otherwise
//
//
//    }
//
//    private boolean isCustomerExists(String id) {
//
//        Customer body= null;
//        if (body == apiRoot.customers().withId("").get().executeBlocking().getBody()){
//
//       }else {
//           return false;
//       }
//
//
//        // Check if a customer with the given email exists in the database
//        // Return true if the customer exists, false otherwise
//    }
//
//    private Customer saveCustomerToDatabase(CustomerDto dto) {
//        // Create a new customer object based on the request data and save it to the database
//        // Return the created customer object
//    }
//}










    @PostMapping("/loggedIn")
    public String customerLogin(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
        CustomerSignInResult customerSignInResult = service.customerLogin(email, password);
        model.addAttribute("signInResult", customerSignInResult);
       // customerSignInResult.getCustomer().getAddresses()
        return "customerInfo";
    }



    @GetMapping("/signUp")
    public String customerSinUp(Model model){
        CustomerDto dto = new CustomerDto();
        model.addAttribute("signUpResult", dto);
        return "signUp";
    }


//    @PostMapping("/created")
//    public String createCustomer(CustomerDto dto, Model model){
//        CustomerSignInResult customerSignInResult = service.customerSignUp(dto);
//        model.addAttribute("signInResult", customerSignInResult);
//        return "customerInfo";
//
//    }
    @PostMapping("/userCreate")
    public String createCustomer(CustomerDto dto, Model model){
        Customer customer= service.createCustomer(dto);
        model.addAttribute("customer", customer);
        return "customerInfo";

    }
    @GetMapping("/userCreate")
    public String createCustomer(){
        return "User";
    }
}
