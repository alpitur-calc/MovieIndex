package com.example.progettoweb.controller;

import model.Encrypter;
import model.User;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import persistence.DBManager;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class loginGoogleController {

    @PostMapping ("/doGoogleRegister")
    public ResponseEntity<?> doGoogleRegister(HttpSession session, @RequestParam String username, @RequestParam String email,
                                          @RequestParam String password){

        User user = DBManager.getInstance().userDao().findByPrimaryKey(username);
        if(user != null){
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
        }
        user = new User();

        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setBiography("");
        user.setProfileImage(null);
        user.setWatchList(new ArrayList<Integer>());

        DBManager.getInstance().userDao().save(user);

        session.setAttribute("userlogged", user.getUsername());
        return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
    }

    @GetMapping("/doGoogleLogIn")
    public String doGoogleLogIn(HttpSession session, Model model, @RequestParam String username, @RequestParam String password){

        User user = DBManager.getInstance().userDao().findByPrimaryKey(username);
        if(user != null && Encrypter.check(password, user.getPassword())){
            session.setAttribute("userlogged", user.getUsername());
        }
        else{
            model.addAttribute("failedtologin", "true");
            return"logIn";
        }
        return "/index";
    }

    @GetMapping("/googleLogIn")
    public String googleLogIn(){
        return "/logInGoogle";
    }

}
