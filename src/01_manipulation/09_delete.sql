-- Delete
--
-- The DELETE FROM statement deletes one or more rows from a table. You can use the statement when you want to delete existing records. The statement below deletes all records in the celeb table with no twitter_handle:

DELETE FROM celebs
WHERE twitter_handle IS NULL;

--     DELETE FROM is a clause that lets you delete rows from a table.
--     celebs is the name of the table we want to delete rows from.
--     WHERE is a clause that lets you select which rows you want to delete. Here we want to delete all of the rows where the twitter_handle column IS NULL.
--     IS NULL is a condition in SQL that returns true when the value is NULL and false otherwise.
--


DELETE FROM celebs
 WHERE twitter_handle IS NULL;

 SELECT * FROM celebs;


 Query Results
id 	name 	age 	twitter_handle
4 	Taylor Swift 	26 	@taylorswift13
Database Schema
celebs
name 	type
id 	INTEGER
name 	TEXT
age 	INTEGER
twitter_handle 	TEXT
Rows: 1
