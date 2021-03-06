/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT 
    CASE 
    WHEN A + B <= C OR B + C  <= A OR A + C <= B THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
    
    WHEN A != B OR B != C OR A != C THEN 'Scalene'
    
    END
FROM Triangles