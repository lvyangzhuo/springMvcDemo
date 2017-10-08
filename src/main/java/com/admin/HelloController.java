package com.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lyz on 2017-10-5.
 */
@Controller
public class HelloController {

    @RequestMapping("/")
    public String hello() {
        return "index";
    }

}
