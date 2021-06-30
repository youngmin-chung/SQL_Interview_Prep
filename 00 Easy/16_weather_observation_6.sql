-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.


SELECT DISTINCT City FROM Station
WHERE City LIKE 'a%' OR City LIKE 'e%' OR City LIKE 'i%' OR City LIKE 'o%' OR City LIKE 'u%'