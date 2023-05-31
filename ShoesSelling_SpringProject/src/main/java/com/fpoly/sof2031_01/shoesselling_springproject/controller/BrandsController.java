package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Brands;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.BrandsRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.service.BrandsService;
import com.fpoly.sof2031_01.shoesselling_springproject.service.BrandsSreviceImpl.BrandsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("")
@RestController
public class BrandsController {

    @Autowired
    BrandsRepository BRANDS_REPOSITORY;

    BrandsService brandsService = new BrandsServiceImpl();
    @GetMapping("getAll")
    public List<Brands> brandsRestAPI(){
        return  this.brandsService.findAll();
    }

}
