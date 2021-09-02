package com.example.progettoweb.controller;

import model.Encrypter;
import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import persistence.DBManager;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.InputStream;

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

    @GetMapping("/userImage")
    public String userImage(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        if(user != null){
            model.addAttribute("setting", "image");
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
    public String sevaPassword(HttpSession session, Model model, @RequestParam String oldpassword, @RequestParam String password){
        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        if(Encrypter.check(oldpassword, currentUser.getPassword())){
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

        model.addAttribute("setting", "password");
        model.addAttribute("wrongPassword", "true");
        return "/userSetting";
    }

    @PostMapping("/saveImage")
    public String handleFileUpload(HttpSession session, Model model, @RequestParam("profileimage") MultipartFile profileimage ) {

        //if needed
        //String fileName = profileimage.getOriginalFilename();

        User currentUser = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        User newUser = new User();

        try{
            newUser.setUsername(currentUser.getUsername());
            newUser.setEmail(currentUser.getEmail());
            newUser.setPassword(currentUser.getPassword());
            newUser.setBiography(currentUser.getBiography());
            InputStream is = profileimage.getInputStream();
            Image img = ImageIO.read(is);
            newUser.setProfileImage(img);
            newUser.setWatchList(currentUser.getWatchList());

            DBManager.getInstance().userDao().update(newUser, currentUser);

            model.addAttribute("username", newUser.getUsername());
            model.addAttribute("biography", newUser.getBiography());
            return "userProfile";
        }catch (Exception e){}

        model.addAttribute("failedToSave", "true");
        return "userSetting";
    }

}
