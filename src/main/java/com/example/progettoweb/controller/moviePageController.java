package com.example.progettoweb.controller;

import model.Movie;
import model.Review;
import model.User;
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
    public String moviePage(Model model, @RequestParam int movieId){

        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);
        if(movie != null){
            List<Review> reviews = DBManager.getInstance().reviewDao().findAllReviewOfAFilm(movie);
            if(reviews != null){
                 model.addAttribute("reviewsList", reviews);
            }
        }

        model.addAttribute("movieId", movie.getId());

        //In moviePage :
        // <c:ForEach var="review" items=${reviews}> SCORRE TUTTI GLI ELEM DELLA LISTA CHE TROVA NEL MODEL
        //      QUI METTI QUELLO CHE VUOI IN BASE A COME VISUALIZZI LA REVIEW
        //      per accedere ai dati di una review basta fare ${review.<attributo>}
        //      ES: ${review.content}
        // </c:ForEach>
        return "moviePage";
    }

    @PostMapping("/addMovieToWatchlist")
    public boolean addMovieToWatchlist(HttpSession session, @RequestParam Integer movieId){
        User user = DBManager.getInstance().userDao().findByPrimaryKey((String) session.getAttribute("userlogged"));
        Movie movie = DBManager.getInstance().movieDao().findByPrimaryKey(movieId);
        if(user != null) {
            if(movie == null){ movie = new Movie(); movie.setId(movieId); }
            List<Movie> list = user.getWatchList();
            list.add(movie);

            User newUser = new User();
            newUser.setUsername(user.getUsername());
            newUser.setPassword(user.getPassword());
            newUser.setEmail(user.getEmail());
            newUser.setBiography(user.getBiography());
            newUser.setProfileImage(user.getProfileImage());
            newUser.setWatchList(list);

            DBManager.getInstance().userDao().update(newUser, user);
            return true;
        }
        return false;
    }

    @PostMapping("/addReviewToMovie")
    public boolean addReviewToMovie(){
        return false;
    }
}

