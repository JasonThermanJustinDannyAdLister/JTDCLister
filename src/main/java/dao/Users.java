package dao;

import models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void editProfile(String username, String password, long id);
}