-- An insurance company maintains records of sales made by its employees. Each employee is assigned to a state. States are grouped under regions. The following tables contain the data:

-- TABLE regions
--   id INTEGER PRIMARY KEY
--   name VARCHAR(50) NOT NULL

-- TABLE states
--   id INTEGER PRIMARY KEY
--   name VARCHAR(50) NOT NULL
--   regionId INTEGER NOT NULL REFERENCES regions(id)

-- TABLE employees
--   id INTEGER PRIMARY KEY
--   name VARCHAR(50) NOT NULL
--   stateId INTEGER NOT NULL REFERENCES states(id)

-- TABLE sales
--   id INTEGER PRIMARY KEY
--   amount INTEGER NOT NULL
--   employeeId INTEGER NOT NULL REFERENCES employees(id)  
-- Management requires a comparative region sales analysis report.

-- Write a query that returns:

-- The region name.
-- Average sales per employee for the region (Average sales = Total sales made for the region / Number of employees in the region).
-- The difference between the average sales of the region with the highest average sales, and the average sales per employee for the region (average sales to be calculated as explained above).
-- Employees can have multiple sales. A region with no sales should be also returned. Use 0 for average sales per employee for such a region when calculating the 2nd and the 3rd column.




-- Write only the SQL statement that solves the problem and nothing else
SELECT r.name, AVG(IFNULL(sa.amount,0)) as average, MAX(AVG(IFNULL(sa.amount,0))) OVER() - AVG(IFNULL(sa.amount,0)) as difference
FROM regions r
left join states s 
on r.id = s.regionId
left join employees e
on s.id = e.stateId
left join sales sa
on e.id = sa.employeeId
GROUP BY r.name
ORDER BY r.id       