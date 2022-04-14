DROP DATABASE IF EXISTS YotaLister_db;
CREATE DATABASE IF NOT EXISTS YotaLister_db;
USE YotaLister_db;

DROP TABLE IF EXISTS ads_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username, email)
);

INSERT INTO users(username, email, password)
VALUES ('codeup', 'codeup@codeup.com', '$2a$12$NLSZfZAX8uCc4j/aFL8f4OawOY2XmVMLEG8lF4wrUsqBrgatLsVmy'),
       ('sally', 'sally@codeup.com', '$2a$12$NLSZfZAX8uCc4j/aFL8f4OawOY2XmVMLEG8lF4wrUsqBrgatLsVmy'),
       ('pepe', 'pepe@codeup.com', '$2a$12$NLSZfZAX8uCc4j/aFL8f4OawOY2XmVMLEG8lF4wrUsqBrgatLsVmy'),
       ('derek', 'derek@codeup.com', '$2a$12$NLSZfZAX8uCc4j/aFL8f4OawOY2XmVMLEG8lF4wrUsqBrgatLsVmy');

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id  INT UNSIGNED NOT NULL,
    title VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO ads(user_id, title, description)
VALUES (1, 'Toyota Sera', 'The Toyota Sera was not a particularly powerful car. It had a 1.5-liter 4-Cylinder engine that only put out 108hp and even though the car weighed only 900kg, this sort of power output was hardly enough for anything other than average road performance.'),
       (2, 'Toyota Origin', 'This unique car was created by Toyota in 2000 to mark a very significant milestone in the company’s history – the production of the company’s 100 millionth vehicle. The Origin drew inspiration from the Toyopet Crown RS, one of the first cars produced by the company.'),
       (3, 'Toyota Sprinter Trueno Convertible', 'The Toyota Sprinter Trueno was a highly popular compact sports coupé produced from 1972 to 2004 and several thousand units still exist today. However, you’d be hard-pressed to find the convertible version though occasionally, one does pop up for sale every now and then.'),
       (4, 'Toyota Mega Cruiser', 'Believe it or not, this Hummer-look-alike actually exists. It is called the Mega Cruiser and was built by Toyota from 1995 to 2001. The massive SUV is actually bigger than the already gigantic Hummer H1; taller by about seven inches and sixteen inches longer than the American gas-guzzler.'),
       (1, 'Toyota 2000GT', 'The car was a joint project between Yamaha and Toyota during the 1960s and it created quite a buzz when it first launched because up until that time, the Japanese were only known for producing cheap economy cars. The idea of a thoroughbred Japanese sports car was almost unheard of until the birth of the 2000GT. In the end, only 351 units were made with about 62 units finding its way to the American market.'),
       (2, '1959 Toyopet Crown', 'The Toyopet Crown marked Toyota’s first real foray into the American market and unfortunately, things did not go quite as planned. For one, the cars were grossly unsuited to the American driving style. They were also too heavy and underpowered with power output rated at a puny 60hp.'),
       (3, '1994 Toyota Corolla TRD2000', 'You won’t find many of these cars around today as Toyota only made 99 units and even fewer than that number were made available for public sale. The car was specially developed by Toyota Racing Development (TRD) and featured quite a few significant upgrades that differentiated it from the standard Corolla.'),
       (4, '1997 Toyota Paseo Cabriolet', 'The Toyota Paseo had its debut in 1991 but it struggled and just never fared well against its rivals, causing Toyota to pull the plug in 1999. The cars are not a common sight on the roads today and even rarer is the Paseo Cabriolet, a version that was only offered for the 1997 model year.'),
       (1, 'Toyota SA', 'This vehicle was the first passenger vehicle produced by Toyota after the end of World War 2 and it marked the beginning of the company’s commercial passenger vehicle production. The car bore some resemblance to the Volkswagen Beetle with its curvy lines.'),
       (2, 'Toyota MR2 TTE Turbo', 'The third-generation MR2 packed a 138hp 4-cylinder engine but there were certain customers who felt that power was not enough for the nimble sports car. In Europe, Toyota responded to these customers by offering a limited-edition turbo package for the MR2s.');

CREATE TABLE IF NOT EXISTS categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ads_id INT UNSIGNED DEFAULT NULL,
    category VARCHAR(255) DEFAULT 'NONE',
    PRIMARY KEY (id),
    FOREIGN KEY (ads_id) REFERENCES ads (id)
);

INSERT INTO categories(category) VALUES
    ('4-cylinder'),
    ('6-cylinder'),
    ('8-cylinder'),
    ('manual'),
    ('automatic');

CREATE TABLE IF NOT EXISTS ads_categories(
  ad_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ads(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);