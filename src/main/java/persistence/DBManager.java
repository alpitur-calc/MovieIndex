package persistence;

public class DBManager {

    private static DBManager instance = null;

    static DBSource dataSource;

    static{
        try{
            Class.forName("org.postgresql.Driver");
            dataSource = new DBSource("jdbc:postgresql://localhost:5432/WebCompDB","postgres","postgres");
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



}
