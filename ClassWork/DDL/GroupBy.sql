# Group by

-- not counting null
SELECT courseId, COUNT(courseId) 
FROM student
GROUP BY courseId;

SELECT * 
FROM student;

-- counts null (count according to all attributes)
SELECT courseId, COUNT(*) as total
FROM student
GROUP BY courseId;

SELECT courseId, count(stid) AS TOTAL
FROM student
GROUP BY courseId
ORDER BY total>1;

SELECT * , count(*) AS total
FROM student
WHERE feestatus like 'Paid'
GROUP BY courseId;
