-- 1.	Add the column of email in customer
ALTER TABLE customer
ADD COLUMN email VARCHAR(100);

-- 2.	Show the number of bikes sold of a particular model
SELECT p.model_id,COUNT(p.cust_id)
FROM model m JOIN purchase p
ON m.model_id = p.model_id  
GROUP BY p.model_id;



-- 3.	Show the total cost of each model name
SELECT model_name, cost
FROM model;

-- 4.	Show the number of rating of each model for each rating type in decreasing order

SELECT m.model_id, r.rating, COUNT(p.rating_id) AS rating_count
FROM model m 
JOIN purchase p ON m.model_id = p.model_id 
JOIN feedback_rating r ON p.rating_id = r.rating_id
GROUP BY m.model_id, r.rating
ORDER BY model_id ASC ,rating_count DESC;

-- 5.	Increase the cost of each bike by 10%
UPDATE model
SET cost = cost + (0.1*cost);

-- 6.	Show the purchases whose booking amount is greater than 20,000
SELECT *
FROM purchase
WHERE booking_amount > 20000.00;

-- 7.	Show the customer whose mobile no is not given
SELECT * 
FROM customer
WHERE mobile_no IS NULL;

-- 8.	Show the average cost of all the model name
SELECT AVG(cost) as avgCost FROM model;