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
public class loginController {

    @GetMapping("/logIn")
    public String logIn(){
        return "logIn";
    }

    @PostMapping("/doLogIn")
    public String doLogIn(HttpSession session, Model model, @RequestParam String username, @RequestParam String password){
        User user = DBManager.getInstance().userDao().findByPrimaryKey(username);
        if(user != null && Encrypter.check(password, user.getPassword())){
            session.setAttribute("userlogged", user.getUsername());
        }
        else{
            model.addAttribute("failedtologin", "true");
            return"logIn";
        }
        return "index";

    }

    @GetMapping("doLogOut")
    public String doLogOut(HttpSession session){
        session.invalidate();
        return "index";
    }
}
