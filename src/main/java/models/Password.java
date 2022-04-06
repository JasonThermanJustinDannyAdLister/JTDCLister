package models;
public class Password {
    private static final int ROUNDS = 10;

    public static String hash(String password) {
        return org.mindrot.jbcrypt.BCrypt.hashpw(password, org.mindrot.jbcrypt.BCrypt.gensalt(ROUNDS));
    }

    public static boolean check(String hashed, String password) {
        return org.mindrot.jbcrypt.BCrypt.checkpw(hashed, password);
    }
}


