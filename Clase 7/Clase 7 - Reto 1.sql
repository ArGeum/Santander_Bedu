-- CREATE DATABASE IF NOT EXISTS bedu;
-- DROP DATABASE IF EXISTS bedu;

use bedu;

CREATE TABLE IF NOT EXISTS Users(
  user_id INT PRIMARY KEY,
  genero CHAR(1),
  edad INT,
  ocupacion INT,
  cp varchar(20)
);

CREATE TABLE IF NOT EXISTS movies(
  movie_id INT PRIMARY KEY,
  Movie Varchar(50),
  Category varchar(100)
);

CREATE TABLE IF NOT EXISTS ratings(
  user_id INT,
  movie_id INT,
  rating INT,
  rating_date TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);