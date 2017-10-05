package com.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by lyz on 2017-10-5.
 */
@Controller
public class HelloController {

    @RequestMapping("/index")
    public String hello(){
        return "index1";
    }
}
