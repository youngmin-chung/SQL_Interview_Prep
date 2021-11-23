CREATE VIEW nameorders
-- AS SELECT orders.ord_no, orders.purch_amt, orders.salesman_id, salesman.name, customer.cust_name
-- FROM salesman
-- JOIN orders ON salesman.id = orders.salesman_id
-- JOIN customer ON orders.customer_id = customer.id
-- WHERE salesman.name = "Mc Lyon"
AS SELECT ord_no, purch_amt, a.salesman_id, name, cust_name
FROM orders a, customer b, salesman c
WHERE a.customer_id = b.customer_id AND a.salesman_id = c.salesman_id