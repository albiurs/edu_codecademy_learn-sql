-- Statements
--
-- The code below is a SQL statement. A statement is text that the database recognizes as a valid command. Statements always end in a semicolon ;.

CREATE TABLE table_name (
   column_1 data_type,
   column_2 data_type,
   column_3 data_type
);

-- Let’s break down the components of a statement:
--
--     CREATE TABLE is a clause. Clauses perform specific tasks in SQL. By convention, clauses are written in capital letters. Clauses can also be referred to as commands.
--     table_name refers to the name of the table that the command is applied to.
--     (column_1 data_type, column_2 data_type, column_3 data_type) is a parameter. A parameter is a list of columns, data types, or values that are passed to a clause as an argument. Here, the parameter is a list of column names and the associated data type.
--
-- The structure of SQL statements vary. The number of lines used does not matter. A statement can be written all on one line, or split up across multiple lines if it makes it easier to read. In this course, you will become familiar with the structure of common statements.

SELECT * FROM celebs;


Query Results
id 	name 	age
1 	Justin Bieber 	22
2 	Beyonce Knowles 	33
3 	Jeremy Lin 	26
4 	Taylor Swift 	26
Database Schema
celebs
name 	type
id 	INTEGER
name 	TEXT
age 	INTEGER
Rows: 4