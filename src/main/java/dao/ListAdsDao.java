package dao;

import models.Ad;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override
    public Ad attainAdId(long id) {
        return null;
    }

    @Override
    public void delete(String id) {

    }

    @Override
    public void edit(Ad newAd) {

    }

    @Override
    public List<Ad> sortAds() {
        return null;
    }

    @Override
    public List<Ad> sortAds(long id) {
        return null;
    }

    @Override
    public List<Ad> sortAdsAscending() {
        return null;
    }

    @Override
    public List<Ad> sortAdsAscending(long id) {
        return null;
    }

    @Override
    public List<Ad> allUserAds(long currentUserId) {
        return null;
    }

    @Override
    public Ad getAdDetails(long id) {
        return null;
    }

    @Override
    public List<Ad> searchAds(String keyword) throws SQLException {
        return null;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
                1,
                "playstation for sale",
                "This is a slightly used playstation"
        ));
        ads.add(new Ad(
                2,
                "Super Nintendo",
                "Get your game on with this old-school classic!"
        ));
        ads.add(new Ad(
                3,
                "Junior Java Developer Position",
                "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
                4,
                "JavaScript Developer needed",
                "Must have strong Java skills"
        ));
        return ads;
    }
}