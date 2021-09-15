package com.example.progettoweb.controller;

import model.Movie;
import model.Review;
import model.User;
import net.minidev.json.JSONObject;
import org.apache.coyote.Request;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import persistence.DBManager;

import javax.servlet.http.HttpSession;
import javax.sound.midi.SysexMessage;
import java.time.LocalDate;
import java.util.List;

@Controller
public class moviePageController {

    @GetMapping("/movie")
    public String moviePage(HttpSession session, Model model, @RequestParam int movieId){
        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);

        if(movie.getId() == 0){
            movie = new Movie();
            movie.setId(movieId);
        }

       /* User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        if(user!= null) {
            List<Integer> watchlist = user.getWatchList();
            if (watchlist.contains(movieId)) {
                model.addAttribute("added", "true");
            }
        }*/

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

    @GetMapping("/getReviews")
    public ResponseEntity<?> getReviews(HttpSession session, @RequestParam Integer movieId) {
        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);
        JSONObject result = new JSONObject();
        if(movie.getId() != 0){
            List<Review> reviews = DBManager.getInstance().reviewDao().findAllReviewOfAFilm(movie);
            JSONObject[] results = new JSONObject[reviews.size()];

            int k = 0;
            for(Review r : reviews) {
                results[k] = new JSONObject();
                results[k].appendField("iduser", r.getIdUser());
                results[k].appendField("rating", r.getRating());
                results[k].appendField("content", r.getContent());
                results[k].appendField("date", r.getDate().toString());
                System.out.println(results[k].toString());
                k++;
            }
            result.appendField("results", results);

            if(reviews != null){
                System.out.println(result.toString());
                return new ResponseEntity<JSONObject>(result, HttpStatus.OK);
            }
        }
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
            list.remove((Integer)movie.getId());

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
    public ResponseEntity<String> addReviewToMovie(HttpSession session, @RequestParam Integer movieId,
                                                   @RequestParam String rating, @RequestParam String content){

        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);
        if(movie.getId() == 0){
            movie.setId(movieId);
            DBManager.getInstance().movieDao().save(movie);
        }

        try{
            if(user != null && movie.getId() != 0){
                Review review = new Review();
                review.setIdUser(user.getUsername());
                review.setIdMovie(movie.getId());
                review.setRating(Integer.parseInt(rating));
                review.setContent(content);
                review.setDate(LocalDate.now());

                DBManager.getInstance().reviewDao().save(review);
                return new ResponseEntity<String>(HttpStatus.OK);
            }
        }catch (Exception e){e.printStackTrace();}

        return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
    }
}

