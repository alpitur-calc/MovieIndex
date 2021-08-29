package com.example.progettoweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class loginController {

    //username = username, pass = password
    @GetMapping("logIn")
    public String logIn(){
        return "logIn";
    }
}
