package com.CTJspView.product;

import com.CTJspView.config.CTClient;
import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.product.Product;
import com.commercetools.api.models.product.ProductPagedQueryResponse;
import com.commercetools.api.models.product.ProductProjectionPagedSearchResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    ProjectApiRoot apiRoot = CTClient.createApiClient();
    @Autowired
    ProductRepository repository;

    public ProductPagedQueryResponse QueryProduct() {
        return apiRoot.products()
                .get()
                .executeBlocking()
                .getBody();
    }

    public Product QueryProductById(String id) {
        return apiRoot.products()
                .withId(id)
                .get()
                .executeBlocking()
                .getBody();
    }


    public List<Product> queryMen() {
        return apiRoot.products().get()
                .addWhere("masterData(current(categories(id=\"a32805dc-ce6c-460c-b0ae-aee94277efed\")))")
                .executeBlocking().getBody().getResults();
    }



    /////////  men--> clothing-----

    public ProductProjectionPagedSearchResponse queryCloth() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"bb39d137-9b16-4aa3-b57f-762397c3315a\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryJacket() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"cef3c3c1-371b-4da9-9272-7b16a9d766f8\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryTops() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"3c24662e-3df9-4813-bc8c-19b77cb85c17\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryTrousers() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"5f4dc5d2-5f92-465c-98d0-93f697c6e42d\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryShirts() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"39519809-0b50-42e1-9fd7-5cf9ec32b8d6\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryJeans() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"d5c342b3-dd23-4e66-b655-de84344ddfa6\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryBlazer() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"04bc3987-c29c-4af4-bf2a-3cedadd2dbef\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse querySuits() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"6393d550-e009-4322-8140-7977b757b8d7\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryTShirt() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"10a6765e-6317-4f2e-996e-30325a7a9c83\")")
                .executeBlocking().getBody();
    }



    /////////  men--> shoes-----
    public ProductProjectionPagedSearchResponse queryShoes() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"0581c485-1ebd-4114-977f-9b0f264dcfcc\")")
                .executeBlocking().getBody();
    }
    public ProductProjectionPagedSearchResponse querySneakers() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"14982767-0655-4574-ae8d-7c78126c735a\")")
                .executeBlocking().getBody();
    }
    public ProductProjectionPagedSearchResponse queryLoafers() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"124dfadb-3514-4da5-b334-48bdf8be3846\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryLaceUpShoes() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"3cc1fcfc-dd50-4562-9b28-497aa1e4d56a\")")
                .executeBlocking().getBody();
    }
    public ProductProjectionPagedSearchResponse queryBoots() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"872bde5e-4c63-4881-90e6-997569235c0c\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse querySandals() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"2cce8a50-0c3f-4936-a9bf-3482352a7a96\")")
                .executeBlocking().getBody();
    }



    //---        women     ----------------------
    public List<Product> queryWomen() {
        return apiRoot.products().get()
                .addWhere("masterData(current(categories(id=\"e189f06e-4993-4ea3-b606-6b0302546de9\")))")
                .executeBlocking().getBody().getResults();
    }


    //---        women-->clothing --------------------
    public ProductProjectionPagedSearchResponse queryWCloth() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"c6b9d0b4-8e0d-4217-a156-3b4048d9773a\")")
                .executeBlocking().getBody();
    }


    //----------------------------  women-->clothing's products  ----------------------------

    public ProductProjectionPagedSearchResponse queryWJacket() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"431e2ae7-7aa5-42b7-a71d-ca443b114fb8\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWTops() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"4b821539-d4d9-4e05-a610-f321320cc2f9\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWTrousers() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"d50f2a74-4a31-44ef-9bad-a4fe8ef97911\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWShirts() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"60cecc22-ebc1-4b90-a94a-0e86f338e22d\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWJeans() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"187a71a5-d617-4931-8bf9-397c0afa46f3\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWSkirts() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"020e0689-9e4e-4c74-aef2-63ce40cc0ca6\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWDresses() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"7179675f-1d18-4277-9542-19e55c37afef\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWTShirt() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"1916fed1-1e0c-4b0e-8bcc-328054819f18\")")
                .executeBlocking().getBody();
    }




    //---        women-->shoes --------------------
    public ProductProjectionPagedSearchResponse queryWShoes() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"8a7843fc-dc20-413c-a442-de0add4cec7b\")")
                .executeBlocking().getBody();
    }

    // shoe's products

    public ProductProjectionPagedSearchResponse queryWSneakers() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"3c8735d1-43c1-43d2-bf52-594b97975308\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWLoafers() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"b864d65f-ee07-4843-a35f-b984976b9bd3\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWAnkleBoots() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"d9350930-9e3d-4ff0-81df-cc780f408687\")")
                .executeBlocking().getBody();
    }
    public ProductProjectionPagedSearchResponse queryWBoots() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"34f27c3d-5584-460d-af9e-a4a5542a2253\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWSandals() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"235ff0ab-ebb6-4202-91c3-9767927bf471\")")
                .executeBlocking().getBody();
    }
    public ProductProjectionPagedSearchResponse queryWBallerinas() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"e9a04a0a-459c-4558-8f4e-1ade079b3a97\")")
                .executeBlocking().getBody();
    }

    public ProductProjectionPagedSearchResponse queryWPumps() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"eb4d0a3d-2afb-4423-8350-b257ad3646d2\")")
                .executeBlocking().getBody();
    }




    //---        women-->bag --------------------
    public ProductProjectionPagedSearchResponse queryBag() {
        return apiRoot.productProjections().search().get()
                .addFilter("categories.id: subtree(\"e9fe45f2-6e76-4de7-9cbd-0b50f6088630\")")
                .executeBlocking().getBody();
    }
}



