package persistence.dao.jdbc;

import model.Review;
import model.Movie;
import model.User;
import org.springframework.beans.factory.parsing.ReaderEventListener;
import persistence.DBSource;
import persistence.dao.ReviewDao;

import java.awt.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReviewDaoJDBC implements ReviewDao {

    private DBSource dataSource;

    public ReviewDaoJDBC(DBSource dataSource){
        this.dataSource = dataSource;
    }

    @Override
    public void save(Review review) {
        try {
            Connection conn = dataSource.getConnection();
            String query = "INSERT INTO review VALUE(?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, review.getIdUser());
            st.setInt(2, review.getIdMovie());
            st.setInt(3, review.getRating());
            st.setString(4, review.getContent());
            st.setDate(5, (Date) review.getDate());
            st.executeQuery();
            conn.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public Review findByPrimaryKey(User user, Movie movie) {
        Review r= new Review();

        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM review WHERE iduser= ?, idmovie = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, user.getUsername());
            st.setInt(2, movie.getId());
            ResultSet rs = st.executeQuery();

            if(rs.next()){
                r.setIdUser(rs.getString(1));
                r.setIdMovie(rs.getInt(2));
                r.setRating(rs.getInt(3));
                r.setContent(rs.getString(4));
                r.setDate((java.util.Date) rs.getDate(5));
            }

            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }

        return r;
    }

    @Override
    public List<Review> findAllReviewOfAUser(User user) {
        List<Review> list = new ArrayList<Review>();
        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM review WHERE iduser = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, user.getUsername());
            ResultSet rs = st.executeQuery();

            while(rs.next()){
                Review r = new Review();
                r.setIdUser(rs.getString(1));
                r.setIdMovie(rs.getInt(2));
                r.setRating(rs.getInt(3));
                r.setContent(rs.getString(4));
                r.setDate((java.util.Date) rs.getDate(5));

                list.add(r);
            }
            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Review> findAllReviewOfAFilm(Movie movie) {
        List<Review> list = new ArrayList<Review>();
        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM review WHERE idmovie = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, movie.getId());
            ResultSet rs = st.executeQuery();

            while(rs.next()){
                Review r = new Review();
                r.setIdUser(rs.getString(1));
                r.setIdMovie(rs.getInt(2));
                r.setRating(rs.getInt(3));
                r.setContent(rs.getString(4));
                r.setDate((java.util.Date) rs.getDate(5));

                list.add(r);
            }
            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public void update(Review updatedReview, Review currentReview) {
        try {
            Connection conn = dataSource.getConnection();
            String query = "UPDATE review SET iduser = ?, idmovie = ?, rating = ?, content = ?, date = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, updatedReview.getIdUser());
            st.setInt(2, updatedReview.getIdMovie());
            st.setInt(3, updatedReview.getRating());
            st.setString(4, updatedReview.getContent());
            st.setDate(5, (Date) updatedReview.getDate());
            st.executeUpdate();

            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void delete(Review review) {
        try {
            Connection conn = dataSource.getConnection();
            String delete = "DELETE FROM review WHERE iduser = ?, idmovie = ?";
            PreparedStatement st = conn.prepareStatement(delete);
            st.setString(1, review.getIdUser());
            st.setInt(2, review.getIdMovie());
            st.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
