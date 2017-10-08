package com.admin;

import com.dao.DemoObj;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by lyz on 2017-10-6.
 */
@RestController
@RequestMapping("/rest")
public class DemoRestController {


    @RequestMapping(value = "/getjson", produces = "application/json;charset=utf-8")
    public DemoObj getjson(DemoObj obj) {
        if(StringUtils.isEmpty(obj.getId())){
            throw new NullPointerException("参数异常 来自:/rest/getjson");
        }
        return new DemoObj(obj.getId() + 1, obj.getName() + "yy");
    }

    @RequestMapping(value = "/getxml", produces = {"application/xml;charset=utf-8"})
    public DemoObj getxml(DemoObj obj) {
        return new DemoObj(obj.getId() + 1, obj.getName() + "yy");
    }
}
