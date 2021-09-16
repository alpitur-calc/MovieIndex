package com.example.progettoweb.controller;

import model.Review;
import model.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import persistence.DBManager;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class userProfileController {

    @GetMapping("/userProfile")
    public String userProfile(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        if(user != null) {
            model.addAttribute("username", user.getUsername());
            model.addAttribute("biography", user.getBiography());
            if(user.getProfileImage() != null){ model.addAttribute("profileimage", user.getProfileImage()); }
            else{ model.addAttribute("profileimage", "default"); }

            if(user.getWatchList() != null) {
                if(user.getWatchList().size()>0)
                    model.addAttribute("watchList", user.getWatchList());
            }
            return "userProfile";
        }
        return "logIn";
    }

    @PostMapping("/deleteUser")
    public String deleteUser(HttpSession session){
        User user = DBManager.getInstance().userDao().findByPrimaryKey((String)session.getAttribute("userlogged"));
        if(user != null){

            List<Review> reviews = DBManager.getInstance().reviewDao().findAllReviewOfAUser(user);
            for(Review r : reviews){
                DBManager.getInstance().reviewDao().delete(r);
            }

            DBManager.getInstance().userDao().delete(user);
            session.invalidate();
            return "index";
        }
        return "userProfile";
    }

}
