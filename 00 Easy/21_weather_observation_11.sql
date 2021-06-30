-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT City FROM Station 
WHERE LEFT(City,1) NOT IN ('a','e','i','o','u') 
OR RIGHT(City, 1) NOT IN ('a','e','i','o','u')