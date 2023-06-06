package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.repository.OrderDetailRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.OrderRepository;
import org.apache.tomcat.websocket.server.UpgradeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class OderDetailCotroller {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @GetMapping("/view-order-detail/{orderID}")
    public String viewOderDetails(Model model, @PathVariable String orderID){
        model.addAttribute("orderDetailList", this.orderDetailRepository.findByOrders(UUID.fromString(orderID   )));
        return "view-order-details";
    }
}
