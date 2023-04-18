# 12 Apr 2023

# any all clauses

# any - either
# all - every condition should be true


USE productdb;
SELECT * FROM supplier;
SELECT * FROM item;

SELECT * 
FROM item
WHERE supid > ANY (SELECT supid
					FROM supplier
                    WHERE firstName IN ("Alice","Alison"));
SELECT * 
FROM item
WHERE supid > ALL (SELECT supid
					FROM supplier
                    WHERE firstName IN ("Alice","Alison"));
                    
 #update with subquery
 
 UPDATE item
 SET cost = cost + (0.2 *
                    
