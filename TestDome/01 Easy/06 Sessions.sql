-- App usage data are kept in the following table:

-- TABLE sessions
--   id INTEGER PRIMARY KEY,
--   userId INTEGER NOT NULL,
--   duration DECIMAL NOT NULL
-- Write a query that selects userId and average session duration for each user who has more than one session.

-- Write only the SQL statement that solves the problem and nothing else.

SELECT userId, AVG(duration)
FROM sessions

GROUP BY userId
HAVING COUNT(userId) > 1 