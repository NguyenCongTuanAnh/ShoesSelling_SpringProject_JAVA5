package com.fpoly.sof2031_01.shoesselling_springproject.service;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Brands;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.BrandsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;


public interface BrandsService {

    List<Brands> findAll();

    Brands getOne(UUID brand_id);

    boolean save(Brands brands);

    boolean deleteByEntity(Brands brands);
}
