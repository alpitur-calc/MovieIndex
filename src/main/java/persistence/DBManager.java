package persistence;

import persistence.dao.MovieDao;
import persistence.dao.ReviewDao;
import persistence.dao.UserDao;
import persistence.dao.jdbc.MovieDaoJDBC;
import persistence.dao.jdbc.ReviewDaoJDBC;
import persistence.dao.jdbc.UserDaoJDBC;

public class DBManager {

    private static DBManager instance = null;

    static DBSource dataSource;

    static{
        try{
            Class.forName("org.postgresql.Driver");
            dataSource = new DBSource("jdbc:postgresql://localhost:5432/MovieIndexDB","postgres","postgres");
        }catch(Exception e){
            System.err.println("Failed to load MySQL JDBC driver\n" + e);
            e.printStackTrace();
        }
    }

    private DBManager(){}

    public static DBManager getInstance(){
        if(instance == null){
            instance = new DBManager();
        }
        return instance;
    }

    public static DBSource getDataSource(){
        return dataSource;
    }

    public UserDao userDao(){
        return new UserDaoJDBC(dataSource);
    }

    public MovieDao movieDao(){
        return new MovieDaoJDBC(dataSource);
    }

    public ReviewDao reviewDao(){
        return new ReviewDaoJDBC(dataSource);
    }

}
