package com.example.progettoweb.controller;

import model.Movie;
import model.Review;
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
import java.util.List;

@Controller
public class moviePageController {

    @GetMapping("/movie")
    public String moviePage(HttpSession session, Model model, @RequestParam int movieId){
        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);
        if(movie.getId() != 0){
            /*List<Review> reviews = DBManager.getInstance().reviewDao().findAllReviewOfAFilm(movie);
            if(reviews != null){
                 model.addAttribute("reviewsList", reviews);
            }*/
        }
        else{
            movie = new Movie();
            movie.setId(movieId);
        }
        String added = "false";
        try{
            User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
            List<Integer> watchlist = user.getWatchList();
            if(watchlist.contains(movieId)){ added = "true";}
        }catch(Exception e){}

        model.addAttribute("added", added);
        model.addAttribute("movieId", movie.getId());

        return "moviePage";
    }

    @PostMapping("/isMovieAdded")
    public ResponseEntity<String> isMovieAdded(HttpSession session, @RequestParam Integer movieId) {
        try{
            User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
            List<Integer> watchlist = user.getWatchList();
            if(watchlist.contains(movieId)){ return new ResponseEntity<String>(HttpStatus.OK); }

            }catch(Exception e){}

        return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
    }


    @PostMapping("/addMovieToWatchlist")
    public ResponseEntity<String> addMovieToWatchlist(HttpSession session, @RequestParam Integer movieId){
        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);

        if(movie.getId() == 0) {
            movie = new Movie();
            movie.setId(movieId);
            DBManager.getInstance().movieDao().save(movie);
        }

        if(user != null && movie.getId() != 0) {
            List<Integer> list = user.getWatchList();
            list.add(movie.getId());

            User newUser = new User();
            newUser.setUsername(user.getUsername());
            newUser.setPassword("");
            newUser.setEmail(user.getEmail());
            newUser.setBiography(user.getBiography());
            newUser.setProfileImage(user.getProfileImage());
            newUser.setWatchList(list);

            DBManager.getInstance().userDao().update(newUser, user);
            return new ResponseEntity<String>(HttpStatus.OK);
        }
        return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
    }

    @PostMapping("/removeMovieFromWatchlist")
    public ResponseEntity<String> removeMovieFromWatchlist(HttpSession session, @RequestParam Integer movieId){
        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));

        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);
        if(movie.getId() == 0) {
            movie = new Movie();
            movie.setId(movieId);
            DBManager.getInstance().movieDao().save(movie);
        }

        if(user != null && movie.getId() != 0) {
            List<Integer> list = user.getWatchList();
            list.remove(movie.getId());

            User newUser = new User();
            newUser.setUsername(user.getUsername());
            newUser.setPassword("");
            newUser.setEmail(user.getEmail());
            newUser.setBiography(user.getBiography());
            newUser.setProfileImage(user.getProfileImage());
            newUser.setWatchList(list);

            DBManager.getInstance().userDao().update(newUser, user);
            return new ResponseEntity<String>(HttpStatus.OK);
        }
        return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
    }
    @PostMapping("/addReviewToMovie")
    public boolean addReviewToMovie(){
        return false;
    }
}

