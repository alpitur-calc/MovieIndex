package com.example.progettoweb.controller;

import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import persistence.DBManager;

import javax.servlet.http.HttpSession;

@Controller
public class userSettingsController {

    @GetMapping("/userData")
    public String userData(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        if(user != null){
            model.addAttribute("setting", "data");
            model.addAttribute("username", user.getUsername());
            model.addAttribute("biography", user.getBiography());
            return "userSetting";
        }

        return "logIn";
    }

    @GetMapping("/userPassword")
    public String userPassword(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        if(user != null){
            model.addAttribute("setting", "password");
            return "userSetting";
        }

        return "logIn";
    }

    @PostMapping("/saveData")
    public String saveChanges(HttpSession session,Model model, @RequestParam String username, @RequestParam String biography){
        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        newUser.setUsername(username);
        newUser.setEmail(currentUser.getEmail());
        newUser.setPassword(currentUser.getPassword());
        newUser.setBiography(biography);
        newUser.setProfileImage(currentUser.getProfileImage());
        newUser.setWatchList(currentUser.getWatchList());

        DBManager.getInstance().userDao().update(newUser, currentUser);

        model.addAttribute("username", newUser.getUsername());
        model.addAttribute("biography", newUser.getBiography());
        return "userProfile";
    }

    @PostMapping("/savePassword")
    public String sevaPassword(HttpSession session, Model model, @RequestParam String password){
        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        newUser.setUsername(currentUser.getUsername());
        newUser.setEmail(currentUser.getEmail());
        if(password != null){ newUser.setPassword(password); }
        else{ newUser.setPassword(currentUser.getPassword()); }
        newUser.setBiography(currentUser.getBiography());
        newUser.setProfileImage(currentUser.getProfileImage());
        newUser.setWatchList(currentUser.getWatchList());

        DBManager.getInstance().userDao().update(newUser, currentUser);

        model.addAttribute("username", newUser.getUsername());
        model.addAttribute("biography", newUser.getBiography());
        return "userProfile";
    }
}
