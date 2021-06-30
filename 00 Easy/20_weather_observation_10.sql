-- Query the list of CITY names from STATION that do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT City FROM Station 
WHERE RIGHT(City,1) NOT IN ('a','e','i','o','u') 