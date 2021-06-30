/*
  List the ways to get the count of records in a table?
*/

SELECT * FROM table1 

SELECT COUNT(*) FROM table1

SELECT rows FROM sysindexes WHERE id = OBJECT_ID(table1) AND indid < 2