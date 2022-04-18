package dao;

import models.User;

public interface Users {
    User findByUsername(String username);
    User findCarsOwnerById(long id);
    User findByUserId(Long id);
    Long insert(User user);
    void editProfile(String username, String password, long id);
    boolean checkUsernameExists(String username);
    void edit(String username, String newUsername, String newPassword);
}