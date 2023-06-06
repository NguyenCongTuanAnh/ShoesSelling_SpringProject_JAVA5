package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Cart;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ProductDetailRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class CartController {
    @Autowired
    private ProductDetailRepository productDetailRepository;

    @GetMapping("/addCart/{id}")
    public String addShoeToCart(HttpSession session, @PathVariable(name = "id") String productID, Model model) {

//        List<Cart> cartList =  session.getAttribute("shoeCart");

        if (session.getAttribute("shoeCart") == null) {
            List<Cart> cartList = new ArrayList<Cart>();
            cartList.add(new Cart(this.productDetailRepository.getOne(UUID.fromString(productID)), 1));
            session.setAttribute("shoeCart", cartList);
        } else {
            List<Cart> cartList = (List<Cart>) session.getAttribute("shoeCart");

            int index = this.exists(productID, cartList);
            if (index == -1) {
                cartList.add(new Cart(productDetailRepository.getById(UUID.fromString(productID)), 1));
            } else {
                int quantity = cartList.get(index).getShoeQuaity() + 1;
                cartList.get(index).setShoeQuaity(quantity);
            }
            session.setAttribute("shoeCart", cartList);
            session.setAttribute("cartSize", cartList.size());
            session.setAttribute("totalCartProduct", totalCartProduct(cartList));
            session.setAttribute("cartTotalPrice", this.totalPrice(cartList));
            session.setAttribute("cartTotalPriceString", convertVNDToCurrencyFormat(this.totalPrice(cartList)));
        }


        model.addAttribute("productDetailsList", this.productDetailRepository.findAll() );
        return "index";
    }

    @GetMapping("/remove-cartItems/{id}")
    public String removeCartItems(@PathVariable UUID id, HttpSession session) {
        System.out.println(id);
        List<Cart> cartList  = (List<Cart>) session.getAttribute("shoeCart");
        cartList.forEach(s-> System.out.println(s.toString()));
        for (int i = 0; i < cartList.size(); i++) {
            if (cartList.get(i).getProductDetail().getProductDetailID().equals(id)){
                System.out.println("Founded 1 cartItem");
                cartList.remove(i);
                break;
            }
        }

        session.setAttribute("shoeCart", cartList);
        session.setAttribute("cartSize", cartList.size());
        session.setAttribute("totalCartProduct", totalCartProduct(cartList));
        session.setAttribute("cartTotalPrice", this.totalPrice(cartList));
        session.setAttribute("cartTotalPriceString", convertVNDToCurrencyFormat(this.totalPrice(cartList)));

        return "view-cart";
    }
    @GetMapping("/view-cart")
    public String viewCart(Model model) {
        return "view-cart";
    }


//        HashMap<UUID, Cart> cartItems = (HashMap<UUID, Cart>) session.getAttribute("shoeCart");
//        if (cartItems == null){
//            cartItems = new HashMap<>();
//        }
//
//        ProductDetail product = this.productDetailRepository.getById(UUID.fromString(productID));
//        System.out.println(product.toString());
//        if (product != null){
//            if(cartItems.containsKey(productID)){
//                Cart item = cartItems.get(productID);
//                item.setProductDetail(product);
//                item.setShoeQuaity(item.getShoeQuaity() + 1);
//                cartItems.put(UUID.fromString(productID), item);
//            }else{
//                Cart cart = new Cart();
//                cart.setProductDetail(product);
//                cart.setShoeQuaity(1);
//            }
//
//            session.setAttribute("cartItems", cartItems);
//            session.setAttribute("myCartTotal", totalPrice(cartItems));
//
//        }

//        return "/view";

    private int exists(String id, List<Cart> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProductDetail().getProductDetailID().toString().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return -1;
    }


    public double totalPrice( List<Cart> cartItems){
        double count =0;
        for( Cart list : cartItems){
            count += list.shoeTotalPrice();
        }
        return count;
    }
    public int totalCartProduct( List<Cart> cartItems){
        int count =0;
        for( Cart list : cartItems){
            count += list.getShoeQuaity();
        }
        return count;
    }

    public String convertVNDToCurrencyFormat(double vnd) {
        // Format VND with decimal separator dot
        DecimalFormat formatter = new DecimalFormat("#,###.##");
        String formattedVND = formatter.format(vnd);

        // Replace dot with comma
        formattedVND = formattedVND.replace(".", ",");

        // Append "đ" character to the end
        formattedVND += " VNĐ";

        return formattedVND;
    }
}
