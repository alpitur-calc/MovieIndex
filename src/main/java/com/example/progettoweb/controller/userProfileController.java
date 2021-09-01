package com.example.progettoweb.controller;

import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import persistence.DBManager;

import javax.servlet.http.HttpSession;

@Controller
public class userProfileController {

    @GetMapping("/userProfile")
    public String userProfile(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        if(user != null) {
            model.addAttribute("username", user.getUsername());
            model.addAttribute("biography", user.getBiography());
            return "userProfile";
        }
        return "logIn";
    }

}
