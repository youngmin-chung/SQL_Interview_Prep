-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT City FROM Station 
WHERE LEFT(City,1) NOT IN ('a','e','i','o','u') 
AND RIGHT(City, 1) NOT IN ('a','e','i','o','u')