package com.fpoly.sof2031_01.shoesselling_springproject.repository;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface OrderRepository extends JpaRepository<Orders, UUID> {
}
