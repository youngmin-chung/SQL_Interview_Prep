SELECT TOP 1 salary
FROM(
    SELECT TOP 3 salary
    FROM employee_table
    ORDER BY salary DESC) AS emp
ORDER BY salary ASC;
