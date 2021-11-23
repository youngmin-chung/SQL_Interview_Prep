-- Suggested testing environment:
-- https://sqliteonline.com/ with language set as MS SQL

-- Example case create statement:
CREATE TABLE users ( 
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);
INSERT INTO users(id, name) values(1, 'Mary');
INSERT INTO users(id, name) values(2, 'Steve');
INSERT INTO users(id, name) values(3, 'John');

CREATE TABLE output (
    output INTEGER
);

-- Execute your submission in a separate run from the CREATE TABLE statements
-- Write your code here


-- Execute this in a separate run from your submission
DECLARE @Output INTEGER;
EXEC FindUsersByName @Name = 'Steve', @UserCount = @Output output;
TRUNCATE TABLE output;
INSERT INTO output (output) VALUES (@Output);
-- Expected output:
-- id
-- ----
-- 2

-- Execute this in a separate run from the previous statements
SELECT * FROM output;
-- Expected output:
-- 3