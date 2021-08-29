package com.example.progettoweb.controller;

import model.Movie;
import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import persistence.DBManager;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.ArrayList;

@Controller
public class signInController {

    @GetMapping("/register")
    @ResponseBody
    public String register(){
        return "signIn";
    }

    @PostMapping("/doRegister")
    public String doRegister(@RequestParam String username, @RequestParam String email,
                             @RequestParam String password){

        User user = DBManager.getInstance().userDao().findByPrimaryKey(username);
        if(user != null){
            return "signIn";
        }
        user = new User();

        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setBiography("");
        user.setProfileImage(null);
        user.setWatchList(new ArrayList<Movie>());

        DBManager.getInstance().userDao().save(user);

        return "index";
    }

}
