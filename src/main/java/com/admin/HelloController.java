package com.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by lyz on 2017-10-5.
 */
@Controller
public class HelloController {

    @RequestMapping("/")
    public String hello() {
        return "index";
    }

    @RequestMapping("/demo1")
    @ResponseBody
    public String demo(String a){
        return a.replaceAll("\\s*","");
    }

}
