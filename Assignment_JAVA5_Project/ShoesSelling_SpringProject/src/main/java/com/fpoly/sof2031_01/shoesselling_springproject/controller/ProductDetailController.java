package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.ProductDetail;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.BrandRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.CategoryRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ColorRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.MaterialRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.PeopleTypeRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ProducerRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ProductDetailRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.ProductRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.SizeRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.SoleRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.TerrainTypeRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.WeatherTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
//@RequestMapping("/detail")
public class ProductDetailController {

    @Autowired
    private ProductDetailRepository productDetailRepository;
    @Autowired
    private BrandRepository brandRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private ColorRepository colorRepository;
    @Autowired
    private MaterialRepository materialRepository;
    @Autowired
    private PeopleTypeRepository peopleTypeRepository;
    @Autowired
    private ProducerRepository producerRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private SizeRepository sizeRepository;
    @Autowired
    private SoleRepository soleRepository;
    @Autowired
    private TerrainTypeRepository terrainTypeRepository;
    @Autowired
    private WeatherTypeRepository weatherTypeRepository;

    @GetMapping("/view")
    @ResponseBody
    public List<ProductDetail> viewMethod(Model model){
//        model.addAttribute("productDetailsList", this.productDetailRepository.findAll() );
       return  productDetailRepository.findAll();
    }

    @GetMapping("/getAll")
    public String indexMethod(Model model){
        model.addAttribute("productDetailsList", this.productDetailRepository.findAll() );

        return "index";
    }

    @GetMapping("/product-add-view")
    public String productAddMethod(Model model){
        model.addAttribute("brandLists", this.brandRepository.findAll());
        model.addAttribute("sizeLists", this.sizeRepository.findAll());
        model.addAttribute("colorLists", this.colorRepository.findAll());
        model.addAttribute("sizeLists", this.sizeRepository.findAll());
        model.addAttribute("categoriesLists", this.categoryRepository.findAll());
        model.addAttribute("materialLists", this.materialRepository.findAll());
        model.addAttribute("peopleTypeLists", this.peopleTypeRepository.findAll());
        model.addAttribute("producerLists", this.producerRepository.findAll());
        model.addAttribute("soleLists", this.soleRepository.findAll());
        model.addAttribute("terrainTypeLists", this.terrainTypeRepository.findAll());
        model.addAttribute("weatherTypeLists", this.weatherTypeRepository.findAll());

        return "create-product-detail";
    }
}
