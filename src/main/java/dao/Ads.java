

package dao;

import models.Ad;
import models.User;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    List<Ad> all();
    long insert(Ad ad);
    Ad get(long i);
    Ad findById(long id);
    List<Ad> allUserAds(long currentUserId);
    void edit( Ad newAd);
    List<Ad> sortAds(long id);
    List<Ad> sortAdsAscending(long id);
    List<Ad> searchAdsFromResults(String searchAds) throws SQLException;
}