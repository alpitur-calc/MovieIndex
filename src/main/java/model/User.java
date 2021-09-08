package model;

import java.util.List;

public class User {

    private String username;
    private String password;
    private String email;
    private String biography;
    private String profileImage;
    private java.util.List<Integer> watchList;

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

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public java.util.List<Integer> getWatchList() {
        return watchList;
    }

    public void setWatchList(List<Integer> watchList) {
        this.watchList = watchList;
    }

}
