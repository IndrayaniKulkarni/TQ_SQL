 # 14 Apr 2023
 USE bookdb;
 # Create Book table structure and make the entries
SELECT * FROM book_copy;
INSERT INTO book_copy VALUES
("The Picture of Dorian Gray",101,500.0,5001);
INSERT INTO book_copy VALUES
("The Graveyard Book",102,450.0,5002),
("The Valley of Fear",103,350.0,5003),
("my Geeta",104,350.0,5004);
INSERT INTO book_copy VALUES
("The Vesuvius Club",105,450.0,5006),
("Pride and Prejudice",106,600.0,5005);


SELECT * FROM author_copy;
-- 1. Write 5 DDL queries
# Create copy of the exisiting table instead of working created data
-- Q. CREATE copy of author and book table.
CREATE TABLE author_copy(
SELECT * FROM author);
CREATE TABLE book_copy(
SELECT * FROM book);
-- ALTER Command.
-- Q. Add isbn number column to the book_copy
ALTER TABLE book_copy
ADD isbn INT NOT NULL;
-- Q. Remove the city column from author_copy
ALTER TABLE author_copy
DROP city;
-- Q.Remove primary key i.e book_id from book_copy
ALTER TABLE book_copy
DROP CONSTRAINT book_id;
-- Q. Make isbn as primary key
ALTER TABLE book_copy
MODIFY COLUMN isbn INT PRIMARY KEY;
-- Q. Remove column name book_id from book_copy
ALTER TABLE book_copy
DROP book_id;

-- Q. RENAME author_copy as author2
ALTER TABLE author_copy
RENAME TO author2;

-- Q. use truncate and drop and distinugh between them 

# the DROP command is used to remove the whole database or table indexes, data, and more. 
# Whereas the TRUNCATE command is used to remove all the rows from the table.
-- TRUNCATE Command.
TRUNCATE TABLE book_copy;
SELECT * FROM book_copy; -- structure present
-- DROP Command.
DROP TABLE author2;
SELECT * FROM author2; -- structure and data deleted

DROP TABLE book_copy;

-- 2.select queries: update, delete
UPDATE book SET price=25.50 WHERE book_id=101;

DELETE FROM author WHERE author_id=106;

UPDATE author SET author_name='William Shakespeare' WHERE author_name='Oscar Wilde';

DELETE FROM book WHERE price < 10;

-- 3.  (two table , self)
SELECT author_name, COUNT(*) AS total_awards 
FROM author JOIN author_award 
ON author.author_id = author_award.author_id GROUP BY author_name;


-- 4. groupby queries