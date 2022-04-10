DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE  adlister_db;
USE adlister_db;

GRANT CREATE, ALTER, INSERT, DROP ON adlister_db.* TO 'admin'@'localhost';

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (

                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username VARCHAR(240) NOT NULL,
                       first_name VARCHAR(60),
                       last_name VARCHAR(60),
                       email VARCHAR(240) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       PRIMARY KEY (id)

);

CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(240) NOT NULL,
                     description TEXT NOT NULL,
                     date_created DATETIME,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
                         ON DELETE CASCADE
);


CREATE TABLE categories
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     ads_id INT UNSIGNED DEFAULT NULL,
    category VARCHAR(255) DEFAULT 'NONE',
    PRIMARY KEY (id)
);

CREATE TABLE ad_categories (
                               ads_id INT UNSIGNED NOT NULL,
                               categories_id INT UNSIGNED,
                               FOREIGN KEY (ads_id) REFERENCES ads(id),
                               FOREIGN KEY (categories_id) REFERENCES categories(id)
);
INSERT INTO users(username, email, password)
VALUES ('codeup', 'codeup@codeup.com', 'codeup'),
       ('sally', 'sally@codeup.com', 'sally'),
       ('pepe', 'pepe@codeup.com', 'pepe'),
       ('derek', 'derek@codeup.com', 'derek');

INSERT INTO ads(user_id, title, description)
VALUES (1, 'playstation for sale', 'This is a slightly used playstation'),
       (2, 'Super Nintendo', 'Get your game on with this old-school classic!'),
       (3, 'Junior Java Developer Position', 'Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript'),
       (4, 'JavaScript Developer needed', 'Must have strong Java skills');


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

SELECT user_id FROM ads;