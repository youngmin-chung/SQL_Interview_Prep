/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
Query the Euclidean Distance between points P1 and P2 and format your answer to display  decimal digits.

*/

SELECT CONVERT(DECIMAL(10,4), SQRT(POWER((MAX(LAT_N)-MIN(LAT_N)),2) + POWER((MAX(LONG_W) - MIN(LONG_W)),2)))
FROM Station
             
            