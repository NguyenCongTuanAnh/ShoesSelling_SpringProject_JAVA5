package com.fpoly.sof2031_01.shoesselling_springproject.repository;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.OrderDetail;
import com.fpoly.sof2031_01.shoesselling_springproject.entity.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, UUID> {

    @Query("select c from OrderDetail c where c.orders.odersID = ?1")
    List<OrderDetail> findByOrders(UUID orderID);
}
