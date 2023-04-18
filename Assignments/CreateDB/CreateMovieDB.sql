/*
12 Apr., 2023
Movies Movie id , movie name , release year , box office collection
Roles roll id , roll name ( e.g. 1 producer , 2 director, 3 hero , 
4 heroine, 5 villain etc)
Celebrity celebrity id , celebrity name , birthdate , ph no , email 
BollywoodData Bollywood Data id , celebrity id , movie id , roll id
*/
CREATE DATABASE moviedb;
USE moviedb;

CREATE TABLE movies (
movie_id INT PRIMARY KEY, 
movie_name VARCHAR(70), 
release_year INT, 
box_office_collection DECIMAL(10,2));

CREATE TABLE roles(
role_id INT PRIMARY KEY,
role_name VARCHAR(20));

-- Celebrity celebrity id , celebrity name , birthdate , ph no , email
CREATE TABLE celebrity(
celebrity_id INT PRIMARY KEY,
celebrity_name VARCHAR(60), 
birthdate DATE, 
ph_no BIGINT, 
email VARCHAR(40));

CREATE TABLE bollywooddata (
bollywood_data_id INT PRIMARY KEY, 
celebrity_id INT, 
movie_id INT, 
role_id INT,
FOREIGN KEY (celebrity_id) REFERENCES celebrity(celebrity_id),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
FOREIGN KEY (role_id) REFERENCES roles(role_id)
);