package com.fpoly.sof2031_01.shoesselling_springproject.repository;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Brands;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.UUID;


@Repository
public interface BrandsRepository extends JpaRepository<Brands, UUID> {
}
