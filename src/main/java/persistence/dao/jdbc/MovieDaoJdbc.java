package persistence.dao.jdbc;

import model.Movie;
import persistence.DBSource;
import persistence.dao.MovieDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MovieDaoJdbc implements MovieDao {

    private DBSource dataSource;

    public MovieDaoJdbc(DBSource dataSource){
        this.dataSource = dataSource;
    }

    @Override
    public void save(Movie Movie) {
        try {
            Connection conn = dataSource.getConnection();
            String query = "INSERT INTO movie VALUE(?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, Movie.getId());
            st.executeQuery();
            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public Movie findByPrimaryKey(int movieId) {
        Movie movie = new Movie();
        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM movie WHERE id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, movieId);
            ResultSet rs= st.executeQuery();
            if(rs.next()) {
                movie.setId(rs.getInt(1));
            }
            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return movie;
    }

    @Override
    public List<Movie> findAll() {
        List<Movie> list = new ArrayList<Movie>();
        try{
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM movie";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();

            while(rs.next()){
                Movie m = new Movie();
                m.setId(rs.getInt(1));
                list.add(m);
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public void update(Movie updatedMovie, Movie currentMovie) {

    }

    @Override
    public void delete(Movie Movie) {

    }
}
