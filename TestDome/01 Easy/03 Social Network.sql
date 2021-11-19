-- A new social network site has the following data tables:

-- USERS
-- ID	NAME	SEX
-- 1	Ann	    null
-- 2	Steve	 m
-- 3	Mary	 f 
-- 4	Brenda	 f
-- FRIENDS
-- USER1	USER2
-- 1	     2
-- 1	     3
-- 2	     3

-- Select data that will be returned by the following SQL query:

-- SELECT users.name, COUNT(*) as count FROM users
-- LEFT JOIN friends
-- ON users.id = friends.user1 OR users.id = friends.user2
-- WHERE users.sex = 'f'
-- GROUP BY users.id, users.name;
-- (Select all acceptable answers.)

Ann     | Steve
Ann     | Mary
Steve   | Mary

Mary 2
Brenda 1