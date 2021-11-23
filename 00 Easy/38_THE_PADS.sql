SELECT CONCAT(Name, '(', SUBSTRING(Occupation, 1, 1), ')') as Name
FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ', 
COUNT(occupation),' ', LOWER(occupation), 's.')
FROM OCCUPATIONS GROUP BY occupation ORDER BY COUNT(occupation);