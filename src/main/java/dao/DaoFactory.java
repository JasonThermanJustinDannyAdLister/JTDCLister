package dao;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }
}