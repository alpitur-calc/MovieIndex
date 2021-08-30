package model;

import org.springframework.security.crypto.bcrypt.BCrypt;

public class Encrypter {

    public static boolean check(String pass, String DBPass){
        return BCrypt.checkpw(pass, DBPass);
    }
    public static String encrypt(String password){
        return BCrypt.hashpw(password, BCrypt.gensalt(12));
    }
}
