package persistence.dao.jdbc;

import model.Review;
import model.Movie;
import model.User;
import org.springframework.beans.factory.parsing.ReaderEventListener;
import persistence.DBSource;
import persistence.dao.ReviewDao;

import java.awt.*;
import java.sql.*;
import java.time.LocalDate;
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
            String query = "INSERT INTO public.review VALUES(?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, review.getIdUser());
            st.setInt(2, review.getIdMovie());
            st.setString(3, review.getContent());
            st.setInt(4, review.getRating());
            Date sqldate = Date.valueOf(review.getDate());
            st.setDate(5, sqldate);
            st.executeUpdate();
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
            String query = "SELECT * FROM public.review WHERE iduser= ?, idmovie= ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, user.getUsername());
            st.setInt(2, movie.getId());
            ResultSet rs = st.executeQuery();

            if(rs.next()){
                r.setIdUser(rs.getString(1));
                r.setIdMovie(rs.getInt(2));
                r.setContent(rs.getString(3));
                r.setRating(rs.getInt(4));
                r.setDate(rs.getDate(5).toLocalDate());
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
            String query = "SELECT * FROM public.review WHERE iduser = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, user.getUsername());
            ResultSet rs = st.executeQuery();

            while(rs.next()){
                Review r = new Review();
                r.setIdUser(rs.getString(1));
                r.setIdMovie(rs.getInt(2));
                r.setContent(rs.getString(3));
                r.setRating(rs.getInt(4));
                r.setDate(rs.getDate(5).toLocalDate());

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
            String query = "SELECT * FROM public.review WHERE idmovie = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, movie.getId());
            ResultSet rs = st.executeQuery();

            while(rs.next()){
                Review r = new Review();
                r.setIdUser(rs.getString(1));
                r.setIdMovie(rs.getInt(2));
                r.setContent(rs.getString(3));
                r.setRating(rs.getInt(4));
                r.setDate(rs.getDate(5).toLocalDate());

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
            String query = "UPDATE public.review SET iduser = ?, idmovie = ?, rating = ?, content = ?, date = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, updatedReview.getIdUser());
            st.setInt(2, updatedReview.getIdMovie());
            st.setString(3, updatedReview.getContent());
            st.setInt(4, updatedReview.getRating());
            Date sqldate = Date.valueOf(updatedReview.getDate());
            st.setDate(5, sqldate);
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
            String delete = "DELETE FROM public.review WHERE iduser = ?, idmovie = ?";
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
