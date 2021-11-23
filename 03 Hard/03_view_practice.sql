-- CREATE VIEW noofgrade(grade,gradecount)
-- AS SELECT grade,COUNT(*) 
-- FROM customer
-- GROUP BY grade;

CREATE VIEW newyorker
AS SELECT *
FROM salesman
WHERE city = "New York"

-- Check another data

SELECT *
FROM newyorker
WHERE commision > .13