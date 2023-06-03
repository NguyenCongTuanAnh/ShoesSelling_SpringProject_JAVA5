package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Cart;
import com.fpoly.sof2031_01.shoesselling_springproject.entity.ProductDetail;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ProductDetailRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class CartController {
    @Autowired
    private ProductDetailRepository productDetailRepository;
    @GetMapping ("/addCart/{id}")
    public String addShoeToCart(HttpSession session, @PathVariable(name = "id") String productID){

        HashMap<UUID, Cart> cartItems = (HashMap<UUID, Cart>) session.getAttribute("shoeCart");
        if (cartItems.isEmpty()){
            cartItems = new HashMap<>();
        }

        ProductDetail product = this.productDetailRepository.getById(UUID.fromString(productID));
        System.out.println(product.toString());
        if (product != null){
            if(cartItems.containsKey(productID)){
                Cart item = cartItems.get(productID);
                item.setProductDetail(product);
                item.setShoeQuaity(item.getShoeQuaity() + 1);
                cartItems.put(UUID.fromString(productID), item);
            }else{
                Cart cart = new Cart();
                cart.setProductDetail(product);
                cart.setShoeQuaity(1);
            }

            session.setAttribute("cartItems", cartItems);
            session.setAttribute("myCartTotal", totalPrice(cartItems));

        }

        return "view-cart";
    }

    public double totalPrice(HashMap<UUID, Cart> cartItems){
        double count =0;
        for(Map.Entry<UUID, Cart> list : cartItems.entrySet()){
            count += list.getValue().getProductDetail().getExportPrice() * list.getValue().getShoeQuaity();
        }
        return count;
    }
}
