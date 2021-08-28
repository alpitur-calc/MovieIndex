package persistence.dao;

import model.Movie;
import model.User;
import java.util.List;

public interface UserDao {

    //CRUD OPERATIONS
    void save(User user); //Create
    User findByPrimaryKey(String username); //Retrieve
    User findByEmail(String email);
    List<User> findAll();
    void update(User updatedUser, User currentUser); //Update
    void delete(User user); //Delete
   // void addMovieToWatchList(User user, Movie movie);
   // void removeMovieFromWatchList(User user, Movie movie);
   // List<Integer> getMoviesInWatchlist(User user);

}
