//package com.CTJspView.customer;
//
//import com.commercetools.api.client.ProjectApiRoot;
//import com.commercetools.api.models.customer.Customer;
//import com.commercetools.api.models.customer.CustomerPagedQueryResponse;
//import jakarta.servlet.http.HttpServletRequest;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RestController;
//
//
//@RestController
//public class TestCustomer {
//
//
//
//
//        @Autowired
//        private ProjectApiRoot sphereClient;
//
//        @GetMapping("/profile")
//        public ResponseEntity<?> getCustomerProfile(HttpServletRequest request) {
//            if (isCustomerLoggedIn(request)) {
//                String customerId = getCustomerId(request);
//                Customer customer = getCustomerFromDatabase(customerId);
//                if (customer != null) {
//                    return ResponseEntity.ok(customer);
//                } else {
//                    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error retrieving customer profile");
//                }
//            } else {
//                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Customer not logged in");
//            }
//        }
//
//        @PostMapping("/login")
//        public ResponseEntity<?> loginCustomer(@RequestBody LoginRequest loginRequest) {
//            Customer customer = authenticateCustomer(loginRequest.getEmail(), loginRequest.getPassword());
//            if (customer != null) {
//                return ResponseEntity.ok(customer);
//            } else {
//                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid credentials");
//            }
//        }
//
//        @PostMapping("/create-customer")
//        public ResponseEntity<?> createCustomer(@RequestBody CustomerRequest customerRequest) {
//            String email = customerRequest.getEmail();
//            if (!isCustomerExists(email)) {
//                Customer customer = createCustomerInDatabase(customerRequest);
//                if (customer != null) {
//                    return ResponseEntity.ok(customer);
//                } else {
//                    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error creating customer");
//                }
//            } else {
//                return ResponseEntity.status(HttpStatus.CONFLICT).body("Customer already exists");
//            }
//        }
//
//        private boolean isCustomerLoggedIn(HttpServletRequest request) {
//            // Check if customer is logged in based on your authentication mechanism
//            // For example, check if a session or token exists
//            // Return true if customer is logged in, false otherwise
//            return true; // Placeholder implementation
//        }
//
//        private String getCustomerId(HttpServletRequest request) {
//            // Retrieve the customer ID from the request based on your authentication mechanism
//            // For example, retrieve it from a session attribute or token
//            // Return the customer ID
//            return "customer-id"; // Placeholder implementation
//        }
//
//        private Customer getCustomerFromDatabase(String customerId) {
//            // Use the commercetools SDK to fetch the customer from the database
//
//            return sphereClient.customers().withId(customerId).get().executeBlocking().getBody();
//        }
//
//        private Customer getCustomerByKey(String customerKey) {
//            // Use the commercetools SDK to fetch the customer by key from the database
//            return sphereClient.customers().withKey(customerKey).get().executeBlocking().getBody();
//        }
//
//        private Customer authenticateCustomer(String email, String password) {
//            // Perform authentication logic to check if the provided credentials are valid
//            // For example, query the database to find a customer with matching email and password
//            // Return the customer object if authentication is successful, null otherwise
//            // Replace this placeholder implementation with your own logic
//
//            Customer customer = Customer.of()
//                  //(m -> m.email.is(email));
//
//            CustomerQuery customerQuery = CustomerQuery.of().withPredicates(m -> m.email().is(email));
//            PagedQueryResult<Customer> result = sphereClient.execute(customerQuery).toCompletableFuture().join();
//            for (Customer customer : result.getResults()) {
//                if (customer.getEmail().equals(email) && customer.getPassword().equals(password)) {
//                    return customer;
//                }
//            }
//            return null;
//        }
//
//        private boolean isCustomerExists(String email) {
//            // Use the commercetools SDK to check if a customer with the given email exists in the database
//            CustomerQuery customerQuery = CustomerQuery.of().withPredicates(m -> m.email().is(email));
//            PagedQueryResult<Customer> result = sphereClient.execute(customerQuery).toCompletableFuture().join();
//            return !result.getResults().isEmpty();
//        }
//
//        private Customer createCustomerInDatabase(CustomerRequest customerRequest) {
//            // Use the commercetools SDK to create a new customer object and save it to the database
//            // Return the created customer object
//            // Replace this placeholder implementation with your own logic
//            // Example:
//            Customer customer = CustomerDraftBuilder.of(customerRequest.getEmail(), customerRequest.getPassword())
//                    .firstName(customerRequest.getFirstName())
//                    .lastName(customerRequest.getLastName())
//                    .build();
//
//            CustomerSignInResult customerSignInResult = sphereClient.execute(CustomerCreateCommand.of(customer)).toCompletableFuture().join();
//            return customerSignInResult.getCustomer();
//        }
//    }
//
//    class LoginRequest {
//        private String email;
//        private String password;
//
//        // Getters and setters
//        public String getEmail() {
//            return email;
//        }
//
//        public void setEmail(String email) {
//            this.email = email;
//        }
//
//        public String getPassword() {
//            return password;
//        }
//
//        public void setPassword(String password) {
//            this.password = password;
//        }
//    }
//
//    class CustomerRequest {
//        private String email;
//        private String password;
//        private String firstName;
//        private String lastName;
//        // Other customer information
//
//        // Getters and setters
//        public String getEmail() {
//            return email;
//        }
//
//        public void setEmail(String email) {
//            this.email = email;
//        }
//
//        public String getPassword() {
//            return password;
//        }
//
//        public void setPassword(String password) {
//            this.password = password;
//        }
//
//        public String getFirstName() {
//            return firstName;
//        }
//
//        public void setFirstName(String firstName) {
//            this.firstName = firstName;
//        }
//
//        public String getLastName() {
//            return lastName;
//        }
//
//        public void setLastName(String lastName) {
//            this.lastName = lastName;
//        }
//
//
//
//}
