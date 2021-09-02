package com.example.progettoweb.controller;

import model.User;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import persistence.DBManager;
import persistence.dao.jdbc.UserDaoJDBC;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.RenderedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;

@Controller
public class userProfileController {

    @GetMapping("/userProfile")
    public String userProfile(HttpSession session, Model model){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        if(user != null) {
            model.addAttribute("username", user.getUsername());
            model.addAttribute("biography", user.getBiography());
            return "userProfile";
        }
        return "logIn";
    }

    /*@RequestMapping(value = "/getProfileImage", method = RequestMethod.GET)
    public void getImageAsByteArray(HttpSession session, HttpServletResponse response){
        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        Image image = user.getProfileImage();
        try {
            ByteArrayOutputStream os = new ByteArrayOutputStream();
            ImageIO.write((RenderedImage) image,"jpg",os);
            InputStream in = new ByteArrayInputStream(os.toByteArray());
            IOUtils.copy(in, response.getOutputStream());
        }catch(IOException e){}
    }*/

    @GetMapping(value = "/getProfileImage", produces = MediaType.IMAGE_PNG_VALUE)
    public ResponseEntity<Resource> image(HttpSession session) throws IOException {
        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        Image image = user.getProfileImage();
        UserDaoJDBC userDao = (UserDaoJDBC) DBManager.getInstance().userDao();
        final ByteArrayResource inputStream = new ByteArrayResource(userDao.extractBytes(image));
        return ResponseEntity.status(HttpStatus.OK).contentLength(inputStream.contentLength()).body(inputStream);
    }

}
