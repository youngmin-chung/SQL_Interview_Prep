-- CREATE VIEW noofgrade(grade,gradecount)
-- AS SELECT grade,COUNT(*) 
-- FROM customer
-- GROUP BY grade;

CREATE VIEW sales_newyork
-- AS SELECT salesman_id, name, city, commission
AS SELECT *
FROM salesman
WHERE city = "New York"