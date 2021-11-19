-- Information about pets is kept in two separate tables:

-- TABLE dogs
--   id INTEGER NOT NULL PRIMARY KEY,
--   name VARCHAR(50) NOT NULL

-- TABLE cats
--   id INTEGER NOT NULL PRIMARY KEY,
--   name VARCHAR(50) NOT NULL
-- Write a query that select all distinct pet names.

-- Write only the SQL statement that solves the problem and nothing else.

SELECT DISTINCT name FROM dogs
UNION
SELECT DISTINCT name FROM cats