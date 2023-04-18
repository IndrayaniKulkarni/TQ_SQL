#12 Apr 2023
/*
Book table Book id , book name , author id , price
Author table author id ,author name , ph no , email , address, city 
Author table award id , award type id, author id , book id , year
Awards 
master table
award type id , award name , award price*/

-- CREATE DATABASE bookdb;
USE bookdb;
# awards_master created first because it it refered by book_awards table
CREATE TABLE awards_master(
award_type_id int PRIMARY KEY,
award_name VARCHAR(70),
award_price FLOAT);
RENAME TABLE awards_master TO awards;
# second author table - refered in book and book_awards table
CREATE TABLE author(
author_id INT PRIMARY KEY,
author_name VARCHAR(90), 
ph_no BIGINT, 
email VARCHAR(20), 
address VARCHAR(30), 
city VARCHAR(10) 
);
# third book table - refered in book_wards
CREATE TABLE book(
book_id INT PRIMARY KEY,
book_name VARCHAR(50), 
author_id INT, 
price FLOAT,
FOREIGN KEY (author_id) REFERENCES author(author_id)
);

# book_award refers to book, author, award table
CREATE TABLE book_awards(
award_id INT PRIMARY KEY ,
award_type_id INT, 
author_id INT, 
book_id INT, 
year INT,
FOREIGN KEY (award_type_id) REFERENCES awards_master(award_type_id),
FOREIGN KEY (author_id) REFERENCES author(author_id),
FOREIGN KEY (book_id) REFERENCES book(book_id)
);
RENAME TABLE book_awards TO author_award;

-- 20 books, 6 authors, 4 awards , 10 -authoraward