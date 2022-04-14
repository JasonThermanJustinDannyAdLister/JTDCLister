package dao;

import models.Config;

import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Cars carsDao;
    private static Categories categoriesDao;
    private static Config config = new Config();

    public static Cars getCarsDao(){
        if (carsDao == null) {
            carsDao = (Cars) new MySQLCarsDao(config);
        }
        return carsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Categories getCategoriesDao(){
        if(categoriesDao == null){
            categoriesDao = new MySQLCategoriesDao(config);
        }
        return categoriesDao;
    }

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}