package dao;

import models.Ad;

import java.sql.SQLException;
import java.util.List;
public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad attainAdId(long id);

    void delete(String id);
    void edit( Ad newAd);
    List<Ad> sortAds();
    List<Ad> sortAds(long id);
    List<Ad> sortAdsAscending();
    List<Ad> sortAdsAscending(long id);

    List<Ad> allUserAds(long currentUserId);
    Ad getAdDetails(long id);
    List<Ad> searchAds(String keyword) throws SQLException;
}