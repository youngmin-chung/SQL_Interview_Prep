-- Suggested testing environment:
-- https://sqliteonline.com/ with language set as MS SQL

-- Example case create statement:
CREATE TABLE customers (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL
);

INSERT INTO customers (id, name) VALUES (0, 'Paul');
INSERT INTO customers (id, name) VALUES (1, 'Mary');
INSERT INTO customers (id, name) VALUES (2, 'Jane');
INSERT INTO customers (id, name) VALUES (3, 'Joe');
INSERT INTO customers (id, name) VALUES (4, 'John');

-- Execute your submission in a separate run from the CREATE TABLE statements
CREATE PROCEDURE GetCustomerPage (@page INTEGER, @pageSize INTEGER) AS
BEGIN
    -- Write your code here
    SELECT id, name FROM customers;
END;

-- Execute this in a separate run from your submission
EXEC GetCustomerPage 1, 4
-- Expected output:
-- id    name
----------------
-- 2     Jane
-- 3     Joe
-- 4     John
-- 1     Mary