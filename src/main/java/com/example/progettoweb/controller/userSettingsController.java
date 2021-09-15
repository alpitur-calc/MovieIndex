package com.example.progettoweb.controller;

import model.Encrypter;
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
            model.addAttribute("profileimage", user.getProfileImage());
            return "userSetting";
        }

        return "logIn";
    }

    @GetMapping("/userPassword")
    public String userPassword(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        if(user != null){
            model.addAttribute("setting", "password");
            model.addAttribute("profileimage", user.getProfileImage());
            model.addAttribute("username", user.getUsername());
            return "userSetting";
        }

        return "logIn";
    }

    @GetMapping("/userImage")
    public String userImage(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        if(user != null){
            model.addAttribute("setting", "image");
            model.addAttribute("profileimage", user.getProfileImage());
            model.addAttribute("username", user.getUsername());
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
        newUser.setPassword("");
        newUser.setBiography(biography);
        newUser.setProfileImage(currentUser.getProfileImage());
        newUser.setWatchList(currentUser.getWatchList());

        DBManager.getInstance().userDao().update(newUser, currentUser);

        model.addAttribute("username", newUser.getUsername());
        model.addAttribute("biography", newUser.getBiography());
        if(newUser.getProfileImage() != null){ model.addAttribute("profileimage", newUser.getProfileImage()); }
        else{ model.addAttribute("profileimage", "default"); }

        return "userProfile";
    }

    @PostMapping("/savePassword")
    public String sevaPassword(HttpSession session, Model model, @RequestParam String oldpassword, @RequestParam String password){
        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        if(Encrypter.check(oldpassword, currentUser.getPassword())){
            newUser.setUsername("");
            newUser.setEmail(currentUser.getEmail());
            if(password != null){ newUser.setPassword(password); }
            else{ newUser.setPassword(""); }
            newUser.setBiography(currentUser.getBiography());
            newUser.setProfileImage(currentUser.getProfileImage());
            newUser.setWatchList(currentUser.getWatchList());

            DBManager.getInstance().userDao().update(newUser, currentUser);

            model.addAttribute("username", newUser.getUsername());
            model.addAttribute("biography", newUser.getBiography());
            if(newUser.getProfileImage() != null){ model.addAttribute("profileimage", newUser.getProfileImage()); }
            else{ model.addAttribute("profileimage", "default"); }

            return "userProfile";
        }

        model.addAttribute("setting", "password");
        model.addAttribute("wrongPassword", "true");
        return "userSetting";
    }

    @PostMapping("/saveImage")
    public String saveImage(HttpSession session, Model model, @RequestParam("profileimage") String profileimage ) {

        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        try{
            newUser.setUsername("");
            newUser.setEmail(currentUser.getEmail());
            newUser.setPassword("");
            newUser.setBiography(currentUser.getBiography());
            newUser.setProfileImage(profileimage);
            newUser.setWatchList(currentUser.getWatchList());

            DBManager.getInstance().userDao().update(newUser, currentUser);

            model.addAttribute("username", newUser.getUsername());
            model.addAttribute("biography", newUser.getBiography());
            model.addAttribute("profileimage", newUser.getProfileImage());
            return "userProfile";
        }catch (Exception e){}

        model.addAttribute("failedToSave", "true");
        return "userSetting";
    }

}
