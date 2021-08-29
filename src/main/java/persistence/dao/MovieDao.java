package persistence.dao;

import model.Movie;

import java.util.List;

public interface MovieDao {

    //CRUD OPERATIONS
    void save(Movie Movie); //Create
    Movie findByPrimaryKey(int movieId); //Retrieve
    List<Movie> findAll();
    void update(Movie updatedMovie, Movie currentMovie); //Update
    void delete(Movie movie); //Delete
}
