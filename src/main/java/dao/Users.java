package dao;

import models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    User findByUserId(Long id);

    void replace(User user);
}