-- Query the list of CITY names from STATION that do not start with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT City FROM Station 
WHERE LEFT(City,1) NOT IN ('a','e','i','o','u') 