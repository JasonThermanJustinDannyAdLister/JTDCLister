package dao;

import models.Config;

import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config;

    static {
        config = new Config();
    }

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}