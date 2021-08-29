package com.example.progettoweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class moviePageController {

    @GetMapping("/movie")
    public String moviePage(){
        return "moviePage";
    }
}
