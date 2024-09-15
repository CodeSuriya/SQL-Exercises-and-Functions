**This repository contains my SQL practice work, focusing on key SQL operations, functions, and clauses.**

**SQL Table Operations:**

> Create Table: Defines the structure of a table with specified columns and data types.
> Insert: Adds new records into a table.
> Alter: Modifies an existing table by adding, altering, or deleting columns.
> Delete: Removes specific records from a table based on a condition.
> Update: Updates existing records in a table.

**SQL Functions:**

> Count: Returns the number of records in a table.
> Average (AVG): Calculates the average value of a numeric column.
> Min/Max: Retrieves the smallest or largest value in a column.
> Case: Allows conditional logic to generate different outputs based on specified conditions.
> Char_Length: Returns the length of a string in terms of the number of characters.
> Format: Formats numeric values into a specified format.
> Uppercase (UCASE): Converts text to uppercase.
> Lowercase (LCASE): Converts text to lowercase.

**SQL Date Functions:**

> CurDate: Retrieves the current date.
> Date_Format: Formats date values into a specified format for better readability.

**SQL Clauses:**

> Where: Filters records based on specific conditions.
> Order By: Sorts the result set in ascending or descending order.
> Group By: Groups records that have the same values in specified columns.
> Distinct: Ensures that only unique values are selected.
> Having: Filters grouped records after the use of the GROUP BY clause.

**SQL Practice - Constraints, Indexes, and Joins**

 This repository contains SQL scripts that demonstrate the use of key SQL concepts like constraints, default constraints, indexes, foreign keys, and joins.

**Key Topics Covered:**
  
> Constraints:

  Constraints are rules enforced on the data in tables to maintain accuracy and reliability.
  Example: NOT NULL, UNIQUE, PRIMARY KEY, CHECK.

> Default Constraints:

  Used to insert default values into columns when no value is specified.
  Example: DEFAULT CURRENT_TIMESTAMP.

> Indexes:

  Indexes help improve the speed of data retrieval by creating a sorted copy of the database column.
  Example: CREATE INDEX idx_name ON table_name (column_name);

> Foreign Key:

  A foreign key establishes a link between two tables by referencing the primary key of another table.
  Example: FOREIGN KEY (column_name) REFERENCES other_table (primary_key_column);

> Joins:

  Joins are used to combine rows from two or more tables based on a related column between them.
  Types of Joins: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.
  Example: SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.id;


**SQL Practice: Advanced Queries**

 This repository contains examples and practice queries covering more advanced SQL functions and concepts. Below is a brief description of each:

> Subqueries: 
 
  Queries within queries that help in retrieving data based on conditions from another query.

> EXISTS with Subquery:

  Used to check whether a subquery returns any results, often used in complex filtering conditions.

> ANY:

  Compares a value to any value in a list or subquery. Useful in cases where at least one condition should match.

> ALL:
 
  Compares a value to all values in a list or subquery, ensuring that all conditions are met.
