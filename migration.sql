DROP DATABASE IF EXISTS adlister_db;

CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS ads_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;




CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';
#
GRANT CREATE, ALTER, INSERT, DROP ON adlister_db.* TO 'admin'@'localhost';

CREATE TABLE IF NOT EXISTS users(
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        username VARCHAR(240) NOT NULL,
        email VARCHAR(240) NOT NULL,
        password VARCHAR(255) NOT NULL,
        PRIMARY KEY (id),
        UNIQUE (username)
);

INSERT INTO users(username, email, password)
VALUES ('codeup', 'codeup@codeup.com', 'codeup'),
       ('sally', 'sally@codeup.com', 'sally'),
       ('pepe', 'pepe@codeup.com', 'pepe'),
       ('derek', 'derek@codeup.com', 'derek');

CREATE TABLE IF NOT EXISTS ads(
                                  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                  user_id  INT UNSIGNED DEFAULT NULL,
                                  title VARCHAR(250) NOT NULL,
                                  description TEXT NOT NULL,
                                  PRIMARY KEY (id),
                                  FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO ads(user_id, title, description)
VALUES (1, 'playstation for sale', 'This is a slightly used playstation'),
       (1, 'Super Nintendo', 'Get your game on with this old-school classic!'),
       (2, 'Super Nintendo', 'Get your game on with this old-school classic!'),
       (3, 'Junior Java Developer Position', 'Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript'),
       (4, 'JavaScript Developer needed', 'Must have strong Java skills');

CREATE TABLE IF NOT EXISTS categories(
                                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     ads_id INT UNSIGNED DEFAULT NULL,
                                         category VARCHAR(255) DEFAULT 'NONE',
                                         PRIMARY KEY (id)
#     FOREIGN KEY (ads_id) REFERENCES ads (id)
);

INSERT INTO categories(category) VALUES
                                     ('help wanted'),
                                     ('free'),
                                     ('electronics'),
                                     ('apparel'),
                                     ('furniture');

CREATE TABLE IF NOT EXISTS ads_categories(
                                             ad_id INT UNSIGNED NOT NULL,
                                             category_id INT UNSIGNED NOT NULL,
                                             FOREIGN KEY (ad_id) REFERENCES ads(id),
                                             FOREIGN KEY (category_id) REFERENCES categories(id)
);

SELECT user_id FROM ads