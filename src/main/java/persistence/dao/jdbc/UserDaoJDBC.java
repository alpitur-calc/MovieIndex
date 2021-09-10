package persistence.dao.jdbc;

import model.Encrypter;
import model.User;
import persistence.DBSource;
import persistence.dao.UserDao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoJDBC implements UserDao {

    private DBSource dataSource;

    public UserDaoJDBC(DBSource dataSource){
        this.dataSource = dataSource;
    }

    @Override
    public void save(User user) {
        try {
            Connection conn = dataSource.getConnection();
            String query = "INSERT INTO public.user(username, password, email, biography, profileimage, watchlist)" +
                    "       VALUES(?, ?, ?, ?, ?, ?);";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, user.getUsername());
            st.setString(2, Encrypter.encrypt(user.getPassword()));
            st.setString(3, user.getEmail());
            st.setString(4, user.getBiography());

            if(user.getProfileImage() != null){
                st.setString(5, user.getProfileImage());
            }
            else{
                st.setString(5 , null);
            }

            //Converting Arraylist to SQL Array type
            Array array = null;
            if(user.getWatchList() != null) {
                List<Integer> list = user.getWatchList();
                Integer[] data = list.toArray(new Integer[list.size()]);
                array = conn.createArrayOf("int", data);
            }

            st.setArray(6, array);
            st.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //Creates a User object from the data in the Result Set
    private User createUserFromResultSet(ResultSet rs){
        User user = new User();
        try {
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setBiography(rs.getString("biography"));
            user.setProfileImage(rs.getString("profileimage"));

            //Converting SQL Array to Movie List
            Array a = rs.getArray("watchlist");
            String[] array = (String[]) a.getArray();
            List<Integer> list = new ArrayList<Integer>();
            for (int k = 0; k < array.length; k++) {
                list.add(Integer.parseInt(array[k]));
            }
            user.setWatchList(list);
        }catch(Exception e){
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public User findByPrimaryKey(String username) {
        User user = null;
        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM public.user WHERE username = ?;";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
                user = createUserFromResultSet(rs);
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public User findByEmail(String email) {
        User user = null;
        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM public.user WHERE email = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
                user = createUserFromResultSet(rs);
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<User>();
        try {
            Connection conn = dataSource.getConnection();
            String query = "SELECT * FROM public.user";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                users.add(createUserFromResultSet(rs));
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public void update(User updatedUser, User currentUser) {
        try {
            Connection conn = dataSource.getConnection();
            String update = "UPDATE public.user SET username = ?, password = ?, email = ?," +
                    "                        biography = ?, profileimage = ?, watchlist = ? WHERE username = ?";
            PreparedStatement st = conn.prepareStatement(update);
            if(!updatedUser.getUsername().equals(""))
                st.setString(1, updatedUser.getUsername());
            else
                st.setString(1, currentUser.getUsername());

            if(!updatedUser.getPassword().equals(""))
                st.setString(2, Encrypter.encrypt(updatedUser.getPassword()));
            else {
                st.setString(2, currentUser.getPassword());
            }

            if(!updatedUser.getEmail().equals(""))
                st.setString(3, updatedUser.getEmail());
            else
                st.setString(3, currentUser.getEmail());

            st.setString(4, updatedUser.getBiography());

            st.setString(5, updatedUser.getProfileImage());

            //Converting Arraylist to SQL Array type

            List<Integer> list = updatedUser.getWatchList();
            Array array;
            if(list != null){
                Integer[] data = list.toArray(new Integer[list.size()]);
                array = conn.createArrayOf("int",data);
            }
            else { array = null;}
            st.setArray(6, array);

            //param per il where
            st.setString(7, currentUser.getUsername());
            st.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(User user) {
        try {
            Connection conn = dataSource.getConnection();
            String delete = "DELETE FROM public.user WHERE username = ? ";
            PreparedStatement st = conn.prepareStatement(delete);
            st.setString(1, user.getUsername());
            st.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
