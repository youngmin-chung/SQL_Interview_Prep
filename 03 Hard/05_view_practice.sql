-- CREATE VIEW unique_cust (ord_date, count, avg, sum)
CREATE VIEW unique_cust
-- AS SELECT ord_date, COUNT(customer_id), AVG(purch_amt), SUM(purch_amt)
AS SELECT ord_date, COUNT(DISTINCT customer_id), AVG(purch_amt), SUM(purch_amt)
FROM orders
-- GROUP BY customer_id
GROUP BY ord_date