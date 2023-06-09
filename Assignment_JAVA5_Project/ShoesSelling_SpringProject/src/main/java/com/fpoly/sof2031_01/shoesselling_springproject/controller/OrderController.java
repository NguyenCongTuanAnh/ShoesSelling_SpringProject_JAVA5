package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Cart;
import com.fpoly.sof2031_01.shoesselling_springproject.entity.OrderDetail;
import com.fpoly.sof2031_01.shoesselling_springproject.entity.Orders;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.CustomerRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.EmployeeRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.OrderDetailRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.OrderRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.sql.Date;
import java.text.ParseException;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

@Controller
public class OrderController {

    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private EmployeeRepository employeeRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;


    @GetMapping("/view-order")
    public String view_order(Model model, @RequestParam(defaultValue = "0", name = "page") int pageNum){

        Pageable pageable = PageRequest.of(pageNum, 3);
        model.addAttribute("orderList", this.orderRepository.findAll(pageable));

        return "order-manager";

    }

    @PostMapping("/addOrderForOrder")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public String addOrderForOrder(
            Model model,
            @RequestParam String ordersCode,
            @RequestParam String receiverFirstName,
            @RequestParam String receiverLastName,
            @RequestParam String receiverAddress,
            @RequestParam String receiverAddress2,
            @RequestParam String receiverPhonenumber,
            @RequestParam String receiverPhonenumber2,HttpSession session

    ) throws ParseException {


        Orders order = Orders.builder()
                .customer(this.customerRepository.getReferenceById(UUID.fromString("115aa74e-6c6f-4935-83db-9fe081810881")))
                .employee(null)
                .ordersCode(ordersCode)
                .createdDate(new Date(Calendar.getInstance().getTime().getTime()))
                .paymentDate(null)
                .appointmentDate(null)
                .shipDate(null)
                .receiveDate(null)
                .receiverName(receiverFirstName + receiverLastName)
                .receiverAddress(receiverAddress + "or" + receiverAddress2)
                .receiverPhonenumber(receiverPhonenumber + "or" + receiverPhonenumber2)
                .orderStatus(1)
                .totalOrderPrice(new BigDecimal((Double) session.getAttribute("cartTotalPrice")))
                .build();

        ////Save Hóa Đơn
        this.orderRepository.save(order);

        System.out.println("Hoa Don:" + order.toString());
        System.out.println("Add Hoa Don Detail");


        List<Cart> productList = (List<Cart>) session.getAttribute("shoeCart");

        for (Cart cart : productList) {
            OrderDetail orderDetail = OrderDetail.builder()
                    .orders(order)
                    .productDetail(cart.getProductDetail())
                    .quantity(cart.getShoeQuaity())
                    .unitPrice(BigDecimal.valueOf(cart.getProductDetail().getExportPrice()))
                    .build();
            this.orderDetailRepository.save(orderDetail);
            System.out.println("Add Hoa Don Detail");
        }
        session.invalidate();
        System.out.println("Clear Session Successs");
        return "/dat-hang-thanh-cong";
    }
    @PostMapping("/addOrder")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public String addOrder(
            Model model,
            @RequestParam String ordersCode,
            @RequestParam String employeeCode,
            @RequestParam String receiverFirstName,
            @RequestParam String receiverLastName,
            @RequestParam String receiverAddress,
            @RequestParam String receiverAddress2,
            @RequestParam String receiverPhonenumber,
            @RequestParam String receiverPhonenumber2,
            @RequestParam String createdDate,
            @RequestParam String appointmentDate,
            @RequestParam String shipDate,
            @RequestParam String receiveDate,
            @RequestParam String paymentDate,

            HttpSession session

    ) throws ParseException {


        Orders order = Orders.builder()
                .customer(this.customerRepository.getReferenceById(UUID.fromString("115aa74e-6c6f-4935-83db-9fe081810881")))
                .employee(this.employeeRepository.getById(UUID.fromString(employeeCode)))
                .ordersCode(ordersCode)
                .createdDate(MyFuntion.convertStringToSqlDate(createdDate))
                .paymentDate(MyFuntion.convertStringToSqlDate(paymentDate))
                .appointmentDate(MyFuntion.convertStringToSqlDate(appointmentDate))
                .shipDate(MyFuntion.convertStringToSqlDate(shipDate))
                .receiveDate(MyFuntion.convertStringToSqlDate(receiveDate))
                .receiverName(receiverFirstName + receiverLastName)
                .receiverAddress(receiverAddress + "or" + receiverAddress2)
                .receiverPhonenumber(receiverPhonenumber + "or" + receiverPhonenumber2)
                .orderStatus(1)
                .totalOrderPrice(new BigDecimal((Double) session.getAttribute("cartTotalPrice")))
                .build();

        ////Save Hóa Đơn
        this.orderRepository.save(order);

        System.out.println("Hoa Don:" + order.toString());
        System.out.println("Add Hoa Don Detail");


        List<Cart> productList = (List<Cart>) session.getAttribute("shoeCart");

        for (Cart cart : productList) {
            OrderDetail orderDetail = OrderDetail.builder()
                    .orders(order)
                    .productDetail(cart.getProductDetail())
                    .quantity(cart.getShoeQuaity())
                    .unitPrice(BigDecimal.valueOf(cart.getProductDetail().getExportPrice()))
                    .build();
            this.orderDetailRepository.save(orderDetail);
            System.out.println("Add Hoa Don Detail");
        }


        return "/dat-hang-thanh-cong";
    }
}
