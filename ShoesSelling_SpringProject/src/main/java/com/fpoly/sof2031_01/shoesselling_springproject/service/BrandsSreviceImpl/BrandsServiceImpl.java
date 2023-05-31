package com.fpoly.sof2031_01.shoesselling_springproject.service.BrandsSreviceImpl;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Brands;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.BrandsRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.service.BrandsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Component
@Service
public class BrandsServiceImpl implements BrandsService {
    @Autowired
    BrandsRepository brandsRepository;

    @Override
    public List<Brands> findAll(){
        return this.brandsRepository.findAll();
    }

    @Override
    public Brands getOne(UUID brand_id){
        return this.brandsRepository.getOne(brand_id);
    }

    @Override
    public boolean save(Brands brands){
        this.brandsRepository.save(brands);
        return true;

    }
    @Override
    public boolean deleteByEntity(Brands brands){
        this.brandsRepository.delete(brands);
        return true;

    }
}
