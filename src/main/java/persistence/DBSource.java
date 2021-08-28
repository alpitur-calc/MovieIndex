package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBSource {

    private String uri;
    private String username;
    private String password;

    public DBSource(String uri, String user, String pass){
        super();
        this.uri = uri;
        this.username = user;
        this.password = pass;
    }

    public Connection getConnection() throws SQLException{
        Connection conn = DriverManager.getConnection(this.uri, this.username, this.password);
        return conn;
    }
}
