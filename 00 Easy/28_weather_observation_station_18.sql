/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.

Definition: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.

*/

SELECT CONVERT(DECIMAL(10,4), (ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W))))
FROM STATION