-- CREATE VIEW count_cust
CREATE VIEW count_cust (grade, number)
-- AS SELECT grade, COUNT(customer_id) as number
AS SELECT grade, COUNT(*)
FROM customer
GROUP BY grade