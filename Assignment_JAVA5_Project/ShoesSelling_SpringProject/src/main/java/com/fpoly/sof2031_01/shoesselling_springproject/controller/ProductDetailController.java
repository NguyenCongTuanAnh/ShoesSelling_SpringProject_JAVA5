package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.ProductDetail;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ProductDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/detail")
public class ProductDetailController {

    @Autowired
    private ProductDetailRepository productDetailRepository;

    @GetMapping("/view")
    public String viewMethod(Model model){
//        model.addAttribute("productDetailsList", this.productDetailRepository.findAll() );
       return  "indexii";
    }

}
