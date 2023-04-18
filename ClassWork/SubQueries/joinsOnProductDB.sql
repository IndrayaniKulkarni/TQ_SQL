# 12 Apr 2023

# joins
use productdb;

# join equivalent to inner join
SELECT *
FROM item i JOIN supplier s
ON i.supid = s.supid;  -- on better option

# equijoin
SELECT *
FROM item i JOIN supplier s
WHERE i.supid = s.supid;  

# natural join
SELECT *
FROM item i NATURAL JOIN supplier s;

# CROSS join 
SELECT *
FROM item i CROSS JOIN supplier s
ON i.supid = s.supid;

# non -equi join 
SELECT 	*
from item i JOIN supplier s
WHERE i.supid<s.supid;

# left outer join
SELECT *
FROM item i LEFT JOIN supplier s
ON i.supid = s.supid;
# keeps null values from right table i.e suppler

# right outer join 
SELECT * 
FROM item i RIGHT JOIN supplier s
ON i.supid = s.supid;
# keeps null valued rows from left table