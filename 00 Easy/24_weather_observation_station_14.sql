/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CONVERT(DECIMAL(10,4), MAX(LAT_N))
FROM STATION
WHERE LAT_N < 137.2345