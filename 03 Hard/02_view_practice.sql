-- CREATE VIEW noofgrade(grade,gradecount)
-- AS SELECT grade,COUNT(*) 
-- FROM customer
-- GROUP BY grade;

CREATE VIEW all_sales
AS SELECT salesman_id, name, city
FROM salesman

-- UPDATE

UPDATE all_sales
SET city = "London"
WHERE salesman_id = 5007