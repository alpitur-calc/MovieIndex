package com.example.progettoweb.controller;

import model.Encrypter;
import model.User;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import persistence.DBManager;

import javax.servlet.http.*;

@Controller
public class loginController {

    @GetMapping("/logIn")
    public String logIn(HttpServletRequest request, Model model){
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for(Cookie c : cookies){
                if(c.getName().equals("username")){ model.addAttribute("username", c.getValue()); }
                if(c.getName().equals("password")){ model.addAttribute("password", c.getValue()); }
            }
        }
        return "logIn";
    }

    @PostMapping("/doLogIn")
    public String doLogIn(HttpSession session, HttpServletResponse response, Model model, @RequestParam String username,
                          @RequestParam String password, @RequestParam Integer rememberMe){
        User user = DBManager.getInstance().userDao().findByPrimaryKey(username);
        if(user != null && Encrypter.check(password, user.getPassword())){
            session.setAttribute("userlogged", user.getUsername());
            if(rememberMe == 1){
                Cookie cookieUsr = new Cookie("username",username);
                Cookie cookiePsw = new Cookie( "password", password);
                cookieUsr.setMaxAge(7 * 24 * 60 * 60); // Scade in 7 giorni
                cookiePsw.setMaxAge(7 * 24 * 60 * 60); // Scade in 7 giorni
                response.addCookie(cookieUsr);
                response.addCookie(cookiePsw);
            } else {
                Cookie cookieUsr = new Cookie("username",username);
                Cookie cookiePsw = new Cookie( "password", password);
                cookieUsr.setMaxAge(0); // Scade subito
                cookiePsw.setMaxAge(0); // Scade subito
                response.addCookie(cookieUsr);
                response.addCookie(cookiePsw);
            }
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
