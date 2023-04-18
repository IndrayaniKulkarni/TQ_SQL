# 14 Apr., 2023
-- Q1 Name of book, price and authorname where author lives in "City"
SELECT b.book_name, b.price, a.author_name
FROM book b
JOIN author a
ON b.author_id = a.author_id 
AND (city = 'London');

-- Q2. Author details who have won award

-- Q3. Show author details who have won particular award
SELECT a.*
FROM author a
JOIN author_award aa
JOIN awards aw
ON a.author = aa.author_a;
-- Q4. Number of author who have won award 
-- Q5. Number of books written by a particular author
-- Q5. Total price of books author wise in desc order
-- Q6. Book name whose price is second max
SELECT b.*
FROM book b
JOIN book b2
ON b.book_id = b2.book_id AND b.price < MAX(b2.price);
-- Q7. Number of award won by author
-- q8, Names of books whose price is less tha particular book
-- Q9. Name of books which is award win order by price