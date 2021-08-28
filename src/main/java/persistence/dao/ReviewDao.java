package persistence.dao;

import model.Movie;
import model.Review;
import model.User;

import java.util.List;

public interface ReviewDao {

    //CRUD OPERATIONS
    void save(Review review);
    Review findByPrimaryKey(User user, Movie movie);
    List<Review> findAllReviewOfAUser(User user);
    List<Review> findAllReviewOfAFilm(Movie movie);
    void update(Review updatedReview, Review currentReview);
    void delete(Review review);

}
