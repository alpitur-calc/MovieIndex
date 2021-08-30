package com.example.progettoweb.controller;

import model.User;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import persistence.DBManager;

import javax.servlet.http.HttpSession;

@Controller
public class loginController {

    private boolean check(String pass, String DBPass){
        return BCrypt.checkpw(pass, DBPass);
    }

    @GetMapping("/logIn")
    public String logIn(){
        return "logIn";
    }

    @PostMapping("/doLogIn")
    public String doLogIn(HttpSession session, @RequestParam String username, @RequestParam String password){
        User user = DBManager.getInstance().userDao().findByPrimaryKey(username);

        if(user != null && check(password, user.getPassword())){
            session.setAttribute("userlogged", username);
            // userlogged sarà nella session e vi si accede con ${userlogged}
            // <c:if test=${userlogged == null}></c if>

        }
        return "index";

    }

    @GetMapping("doLogOut")
    public String doLogOut(HttpSession session){
        session.invalidate();
        return "index";
    }
}
