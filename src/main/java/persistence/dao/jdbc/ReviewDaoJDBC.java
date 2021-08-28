package persistence.dao.jdbc;

import model.Movie;
import model.Review;
import model.User;
import persistence.dao.ReviewDao;

import java.util.List;

public class ReviewDaoJDBC implements ReviewDao {
    @Override
    public void save(Review review) {

    }

    @Override
    public Review findByPrimaryKey(User user, Movie movie) {
        return null;
    }

    @Override
    public List<Review> findAllReviewOfAUser(User user) {
        return null;
    }

    @Override
    public List<Review> findAllReviewOfAFilm(Movie movie) {
        return null;
    }

    @Override
    public void update(Review updatedReview, Review currentReview) {

    }

    @Override
    public void delete(Review review) {

    }
}
