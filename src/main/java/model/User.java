package model;

import java.awt.*;
import java.util.List;

public class User {

    private String username;
    private String password;
    private String email;
    private String biography;
    private Image profileImage;
    private java.util.List<Movie> watchList;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String Biography) {
        this.biography = Biography;
    }

    public Image getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(Image profileImage) {
        this.profileImage = profileImage;
    }

    public java.util.List<Movie> getWatchList() {
        return watchList;
    }

    public void setWatchList(List<Movie> watchList) {
        this.watchList = watchList;
    }

}