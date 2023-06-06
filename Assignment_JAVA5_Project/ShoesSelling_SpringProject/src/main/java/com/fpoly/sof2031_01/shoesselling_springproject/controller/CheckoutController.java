package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CheckoutController {
    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("/checkout")
    public String checkout(Model model) {
        model.addAttribute("billingCode", MyFuntion.genUniqueidentifierString(9));
        model.addAttribute("staffList", this.employeeRepository.findAll());

        return "checkout";
    }

    @GetMapping("/checkoutForOrder")
    public String checkoutForOrder(Model model) {
        model.addAttribute("billingCode", MyFuntion.genUniqueidentifierString(9));

        return "checkout-for-order";
    }
    @GetMapping("/dat-hang-thanh-cong")
    public String viewOrderSuccess(Model model) {

        return "dat-hang-thanh-cong";
    }

}
