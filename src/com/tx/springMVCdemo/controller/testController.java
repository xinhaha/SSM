package com.tx.springMVCdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hi")
public class testController {
    @RequestMapping("/helloWorld")
    public String helloWorld(Model model){
        model.addAttribute("hh","457896");
        return "helloWorld";
    }
    @RequestMapping("/adduser")
    public String addUsers( Model model,String name,String age){
       // System.out.println(name+age);
        model.addAttribute("name",name);
        model.addAttribute("age",age);
        return  "helloWorld";
    }
    @RequestMapping("/toadd")
    public String toadd(){
        return "submitjsp";
    }
    @RequestMapping("/adduser1")
    @ResponseBody
    public String adduser1( Model model,String name,String age){
        System.out.println("名字："+name+"年纪："+age);
        model.addAttribute("name",name);
        model.addAttribute("age",age);
        return  name;
    }
}
