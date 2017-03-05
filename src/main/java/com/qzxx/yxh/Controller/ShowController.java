package com.qzxx.yxh.Controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by xuyifei on 2017/3/5.
 */
@Controller
public class ShowController {

    private String message = "Hello World";

    @GetMapping("/")
    public String index(ModelMap model) {
        model.put("time", new Date());
        model.put("message", this.message);
        return "index";
    }
    @GetMapping("/error")
    public String error(Map<String,Object> model) {
        return "error";
    }
}
