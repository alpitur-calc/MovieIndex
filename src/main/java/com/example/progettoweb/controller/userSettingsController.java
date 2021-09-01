package com.example.progettoweb.controller;

import model.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import persistence.DBManager;

import javax.servlet.http.HttpSession;

public class userSettingsController {

    @GetMapping("/userSettings")
    public String userSettings(HttpSession session){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        if(user != null){
            return "userSettings";
        }

        return "logIn";
    }

    @PostMapping("/saveChanges")
    public String saveChanges(HttpSession session, @RequestParam String username, @RequestParam String password, @RequestParam String biography){
        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        newUser.setUsername(username);
        newUser.setEmail(currentUser.getEmail());
        newUser.setPassword(password);
        newUser.setBiography(biography);
        newUser.setProfileImage(currentUser.getProfileImage());
        newUser.setWatchList(currentUser.getWatchList());

        DBManager.getInstance().userDao().update(newUser, currentUser);

        return "userProfile";
    }
}
