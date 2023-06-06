package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private static Logger logger = LogManager.getLogger(User.class);
    @GetMapping("/dang-nhap")
    public String login(@RequestParam(name = "error") String error){

        logger.error(error);
        return "login";
    }
}
