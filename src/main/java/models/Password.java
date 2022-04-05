package models;
public class Password {
    private static final int ROUNDS = 12;

    public static String hash(String password) {
        return org.mindrot.jbcrypt.BCrypt.hashpw(password, org.mindrot.jbcrypt.BCrypt.gensalt(ROUNDS));
    }

    public static boolean check(String password, String hashed) {
        return org.mindrot.jbcrypt.BCrypt.checkpw(password, hashed);
    }
}