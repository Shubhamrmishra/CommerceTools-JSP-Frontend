package com.CTJspView.product;

import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.product.Product;
import com.commercetools.api.models.product.ProductProjectionPagedSearchResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@org.springframework.stereotype.Controller
public class ProductController {

    @Autowired
    ProjectApiRoot apiRoot;

    @Autowired
    ProductService service;

//    @GetMapping("/")
//    public String homePage(){
//        return "newHome";
//    }

    @GetMapping("/")
    public String homePage(){
        return "home";
    }


    // -------------------------   Men Category ------------------------


    @GetMapping("/men")
    public String queryMen(Model model){
        Object allMen = service.queryMen();
        model.addAttribute("men",allMen);
        return "men";
    }


    //------------ men--> clothing-----

    @GetMapping("/men/clothing")
    public String queryCloth(Model model){
        Object clothing = service.queryCloth();
        model.addAttribute("clothing",clothing);
        return "clothing";
    }


    //----------------    Clothing's products      -----

    @GetMapping("/men/clothing/jackets")
    public String queryJacket(Model model){
        ProductProjectionPagedSearchResponse response = service.queryJacket();
        model.addAttribute("blazers",response);
        return "blazers";
    }

    @GetMapping("/men/clothing/tops")
    public String queryTops(Model model){
        ProductProjectionPagedSearchResponse response = service.queryTops();
        model.addAttribute("blazers",response);
        return "blazers";
    }

    @GetMapping("/men/clothing/trousers")
    public String queryTrousers(Model model){
        ProductProjectionPagedSearchResponse response = service.queryTrousers();
        model.addAttribute("blazers",response);
        return "blazers";
    }
    @GetMapping("/men/clothing/shirts")
    public String queryShirts(Model model){
        ProductProjectionPagedSearchResponse response = service.queryShirts();
        model.addAttribute("blazers",response);
        return "blazers";
    }

    @GetMapping("/men/clothing/jeans")
    public String queryJeans(Model model){
        ProductProjectionPagedSearchResponse response = service.queryJeans();
        model.addAttribute("blazers",response);
        return "blazers";
    }
    @GetMapping("/men/clothing/blazer")
    public String queryBlazer(Model model){
        ProductProjectionPagedSearchResponse response = service.queryBlazer();
        model.addAttribute("blazers",response);
        return "blazers";
    }
    @GetMapping("/men/clothing/suits")
    public String querySuits(Model model){
        ProductProjectionPagedSearchResponse response = service.querySuits();
        model.addAttribute("blazers",response);
        return "blazers";
    }

    @GetMapping("/men/clothing/tshirts")
    public String queryTShirt(Model model){
        ProductProjectionPagedSearchResponse response = service.queryTShirt();
        model.addAttribute("blazers",response);
        return "blazers";
    }

/////////  men--> shoes-----


@GetMapping("/men/shoes")
public String queryShoes(Model model){
    ProductProjectionPagedSearchResponse response = service.queryShoes();
    model.addAttribute("shoes",response);
    return "shoes";
}

//----------------    Shoe's products      -----


    @GetMapping("/men/shoes/sneakers")
    public String querySneakers(Model model){
        ProductProjectionPagedSearchResponse response = service.querySneakers();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }

    @GetMapping("/men/shoes/loafers")
    public String queryLoafers(Model model){
        ProductProjectionPagedSearchResponse response = service.queryLoafers();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }

    @GetMapping("/men/shoes/laceUpShoes")
    public String queryLaceUpShoes(Model model){
        ProductProjectionPagedSearchResponse response = service.queryLaceUpShoes();
        model.addAttribute("laceUp",response);
        return "sneakers";
    }

    @GetMapping("/men/shoes/boots")
    public String queryBoots(Model model){
        ProductProjectionPagedSearchResponse response = service.queryBoots();
        model.addAttribute("boots",response);
        return "sneakers";
    }
    @GetMapping("/men/shoes/sandals")
    public String querySandals(Model model){
        ProductProjectionPagedSearchResponse response = service.querySandals();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }







    // -------------------------   Women Category ------------------------


    @GetMapping("/women")
    public String queryWomen(Model model){
        Object allWomen = service.queryWomen();
        model.addAttribute("women",allWomen);
        return "women";
    }

    //--------------------------- Women's category  -------------------------------



//---        women-->clothing --------------------
    @GetMapping("/women/clothing")
    public String queryWCloth(Model model){
        Object clothing = service.queryWCloth();
        model.addAttribute("wClothing",clothing);
        return "WomenClothing";
    }

    //- women-->clothing's product --------------------

    @GetMapping("/women/clothing/jackets")
    public String queryWJacket(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWJacket();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }

    @GetMapping("/women/clothing/tops")
    public String queryWTops(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWTops();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }

    @GetMapping("/women/clothing/trousers")
    public String queryWTrousers(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWTrousers();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }
    @GetMapping("/women/clothing/shirts")
    public String queryWShirts(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWShirts();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }

    @GetMapping("/women/clothing/jeans")
    public String queryWJeans(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWJeans();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }
    @GetMapping("/women/clothing/skirts")
    public String queryWSkirts(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWSkirts();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }
    @GetMapping("/women/clothing/dresses")
    public String queryWDresses(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWDresses();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }

    @GetMapping("/women/clothing/tshirts")
    public String queryWTShirt(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWTShirt();
        model.addAttribute("womenAllCloth",response);
        return "womenAllCloth";
    }





    //---        women-->shoes --------------------

    @GetMapping("/women/shoes")
    public String queryWShoes(Model model){
        Object shoes = service.queryWShoes();
        model.addAttribute("wShoes",shoes);
        return "WomenShoe";
    }
//     shoe's products


    @GetMapping("/women/shoes/sneakers")
    public String queryWSneakers(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWSneakers();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }

    @GetMapping("/women/shoes/loafers")
    public String queryWLoafers(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWLoafers();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }

    @GetMapping("/women/shoes/ankleBoots")
    public String queryWAnkleBoots(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWAnkleBoots();
        model.addAttribute("laceUp",response);
        return "sneakers";
    }

    @GetMapping("/women/shoes/boots")
    public String queryWBoots(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWBoots();
        model.addAttribute("boots",response);
        return "sneakers";
    }
    @GetMapping("/women/shoes/sandals")
    public String queryWSandals(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWSandals();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }
    @GetMapping("/women/shoes/ballerinas")
    public String queryWBallerinas(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWBallerinas();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }
    @GetMapping("/women/shoes/pumps")
    public String queryWPumps(Model model){
        ProductProjectionPagedSearchResponse response = service.queryWPumps();
        model.addAttribute("sneakers",response);
        return "sneakers";
    }






//---        women-->bag --------------------


    @GetMapping("/women/bag")
    public String queryBag(Model model){
        Object bag = service.queryBag();
        model.addAttribute("bag",bag);
        return "WomenBag";
    }








    @GetMapping("/products")
    public String QueryProduct(Model model){
        Object queryResponse = service.QueryProduct();
        model.addAttribute("product",queryResponse);
        return "plp";
    }

    @GetMapping("/product/{id}")
    public String QueryProductById(Model model,@PathVariable String id){
        Product product = service.QueryProductById(id);
        model.addAttribute("productDetails",product);
        return "pdp";
    }


}
