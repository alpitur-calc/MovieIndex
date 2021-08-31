package com.example.progettoweb.controller;

import model.Movie;
import model.Review;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import persistence.DBManager;

import java.util.List;

@Controller
public class moviePageController {

    @GetMapping("/movie")
    public String moviePage(Model model){

        //List<Review> reviews = DBManager.getInstance().reviewDao().findAllReviewOfAFilm((Movie) model.getAttribute("selectedmovie"));

       // if(reviews != null){
          //  model.addAttribute("reviewsList", reviews);
        //}
        //In moviePage :
        // <c:ForEach var="review" items=${reviews}> SCORRE TUTTI GLI ELEM DELLA LISTA CHE TROVA NEL MODEL
        //      QUI METTI QUELLO CHE VUOI IN BASE A COME VISUALIZZI LA REVIEW
        //      per accedere ai dati di una review basta fare ${review.<attributo>}
        //      ES: ${review.content}
        // </c:ForEach>
        return "moviePage";
    }
}

