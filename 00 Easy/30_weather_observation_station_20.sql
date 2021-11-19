/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.

MEDIAN

*/

SELECT TOP 1 CONVERT(DECIMAL(10,4),(
 (SELECT MAX(LAT_N) FROM
   (SELECT TOP 50 PERCENT LAT_N FROM Station ORDER BY LAT_N) AS BottomHalf)
 +
 (SELECT MIN(LAT_N) FROM
   (SELECT TOP 50 PERCENT LAT_N FROM Station ORDER BY LAT_N DESC) AS TopHalf)
) / 2)

FROM Station