package util;

import org.mindrot.jbcrypt.BCrypt;

public class
Password {
    private static final int ROUNDS = 12;

    public static String hash(String password) {
        String hash = BCrypt.hashpw(password, BCrypt.gensalt(ROUNDS));
        System.out.println(hash);
        return hash;
    }
    public static boolean check(String password, String hash) {
       boolean check = BCrypt.checkpw(password, hash);
        System.out.println(check);
        return check;
    }
}
