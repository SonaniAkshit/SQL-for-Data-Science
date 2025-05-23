# 🧾 SQL Queries

## 📥 INSERT Query
The SQL INSERT INTO Statement is used to add new rows of data into a table in the database. Almost all the RDBMS provide this SQL query to add the records in database tables.

###### Syntax:1
```sql
INSERT INTO TABLE_NAME (column1, column2...columnN) 
VALUES (value1, value2...valueN);
```

###### Syntax:2
```sql
INSERT INTO TABLE_NAME 
VALUES (value1,value2...valueN);
```

- let us create a table with name **CUSTOMERS**
```sql
CREATE TABLE CUSTOMERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
```

###### </> Example:1
```sql
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'Kaushik', 23, 'Kota', 2000.00 );
```
###### </> Exmaple:2
```sql
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 );
```

###### </> Exmaple:3
```sql
INSERT INTO CUSTOMERS 
VALUES (7, 'Muffy', 24, 'Indore', 10000.00 );
```
```sql
SELECT * FROM CUSTOMERS;
```

### ➕ Inserting Data into a Table Using Another
Sometimes, you just need to copy the data from an existing table to another table in the same database. SQL provides convenient ways to do so −

> - Using INSERT... SELECT 
> - Using INSERT... TABLE

#### 1) The INSERT... SELECT Statement

You can populate the data into a table through the select statement using an already existing another table; provided the other table has a set of fields, which are required to populate the first table.

###### Syntax
```sql
INSERT INTO first_table_name [(column_name(s))]
SELECT column1, column2, ...columnN
FROM second_table_name
[WHERE condition];
```

The following statement would create another table named `BUYERS` with the same structure as CUSTOMERS table −
```sql
CREATE TABLE BUYERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
```
Now using the INSERT... INTO statement, let us insert all the records from the `CUSTOMERS` table into the `BUYERS` table.

###### </> Exmaple
```sql
INSERT INTO BUYERS (ID, NAME, AGE, ADDRESS, SALARY) 
SELECT * FROM CUSTOMERS;
```
```sql
select * from buyers;
```

#### 2) The INSERT... TABLE Statement
If you have two tables structure exactly same, then instead of selecting specific columns you can insert the contents of one table into another using the INSERT...TABLE statement.

###### Syntax
```sql
INSERT INTO first_table_name TABLE second_table_name;
```
```sql
CREATE TABLE SHOPPERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
```
###### </> Example
```sql
INSERT INTO SHOPPERS TABLE CUSTOMERS;
```
```sql
SELECT * FROM SHOPPERS;
```

## 🔍 SELECT Query
The SQL SELECT Statement is used to fetch the data from a database table which returns this data in the form of a table. These tables are called result-sets.

> *CLAUSES and OPERATORS available in SQL can be used with the SELECT statement in order to retrieve the filtered records of a database table*

###### Syntax
```sql
SELECT column1, column2, columnN FROM table_name;

SELECT * FROM table_name;
```

###### CUSTOMERS Table
```sql
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);
```

###### Insert Records
```sql
INSERT INTO CUSTOMERS VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'Kaushik', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );
```

If you want to fetch all the fields of the CUSTOMERS table, then you should use the query of SELECT statement with an Asterisk (*) instead of the column names, as shown below −
```sql
SELECT * FROM CUSTOMERS;
```

The following statement fetches the ID, Name and Salary fields of the records available in CUSTOMERS table.
```sql
SELECT ID, NAME, SALARY FROM CUSTOMERS;
```

### 📊 Computing Using SELECT

The SQL SELECT statement can also be used to retrieve the results of various mathematical computations in the form of a table. In such cases, you do not need to specify any database table in the statement.

###### Syntax
```sql
SELECT mathematical_expression;
```

###### </> Example
```sql
SELECT 56*65;
```

### 📊 Aliasing a Column in SELECT Statement

Whenever a column name in a table is too difficult to read and understand, SQL provides a method to alias this column name into another understandable and relative name. This is done using the AS keyword. You can use the `AS keyword` in a SELECT statement to display the column names of a table as an alias name.

###### Syntax 
```sql
SELECT column_name 
AS alias_name 
FROM table_name;
```
###### </> Exmaple
In the example below, we are trying to retrieve customer details NAME and AGE in a single column of the resultant table using the concat() expression and aliasing the column as DETAILS along with the customer addresses from the CUSTOMERS table. This will be done using SELECT statement in the following query −
```sql
SELECT CONCAT(NAME,' ',AGE) 
AS DETAILS, ADDRESS 
FROM CUSTOMERS ORDER BY NAME;
```

## ♻️ UPDATE Query

The SQL UPDATE Statement is used to modify the existing records in a table. This statement is a part of Data Manipulation Language (DML), as it only modifies the data present in a table without affecting the table's structure.

To filter records that needs to be modified, you can use a WHERE clause with UPDATE statement. Using a WHERE clause, you can either update a single row or multiple rows.

> _Since it only interacts with the data of a table, the SQL UPDATE statement needs to used cautiously. If the rows to be modified aren't selected properly, all the rows in the table will be affected and the correct table data is either lost or needs to be reinserted._

###### Syntax
```sql
UPDATE table_name
SET column1 = value1, column2 = value2,..., columnN = valueN
WHERE [condition];
```

###### </> Example
```sql
UPDATE CUSTOMERS SET ADDRESS = 'Pune' WHERE ID = 6;
```

###### ✅ Verification
```sql
SELECT * FROM CUSTOMERS WHERE ID=6;
```

### ✏️ Update Multiple ROWS and COLUMNS

Using SQL UPDATE statement, multiple rows and columns in a table can also be updated. To update multiple rows, specify the condition in a WHERE clause such that only the required rows would satisfy it.

###### Syntax
```sql
UPDATE table_name
SET column_name1 = new_value, column_name2 = new_value...
WHERE condition(s)
```
###### </> Example
```sql
UPDATE CUSTOMERS SET AGE = AGE+5, SALARY = SALARY+3000;
```

###### </> Example
```sql
UPDATE CUSTOMERS 
SET ADDRESS = 'Pune', SALARY = 1000.00 
WHERE NAME = 'Ramesh';
```

###### ✅ Verification
```sql
SELECT * FROM CUSTOMERS WHERE NAME = 'Ramesh';
```

## 🗑️ DELETE Query

The SQL `DELETE` Statement is used to delete the records from an existing table. In order to filter the records to be deleted (or, delete particular records), we need to use the `WHERE` clause along with the `DELETE statement`.

###### Syntax
```sql
DELETE FROM table_name WHERE [condition];
```
###### </> Example
```sql
DELETE FROM CUSTOMERS WHERE ID = 6;
```
###### ✅ Verification
```sql
SELECT * FROM CUSTOMERS;
```

### ❌ Deleting Multiple Rows
To delete multiple rows from a table, we need to specify the required condition(s), that is satisfied by all the rows to be deleted, using the WHERE clause. Let us look at an example −
```sql
DELETE FROM CUSTOMERS WHERE AGE > 25;
```

###### ✅ Verification
```sql
SELECT * FROM CUSTOMERS;
```

### ❌ Deleting All The Records From a Table
If we want to `DELETE` all the records from an existing table (truncate it) using the DELETE query, we simply need to run it without using the `WHERE` clause.

###### </> Example
```sql
DELETE FROM CUSTOMERS;
```

###### ✅ Verification
```sql
SELECT * FROM CUSTOMERS;
```

### ❌ Delete Records in Multiple Tables
SQL allows us to delete the records from multiple tables using the DELETE query. In here, we will use the JOIN clause to combine data from multiple tables (based on a common column).

###### </> Example
Let us create another table with name ORDERS which contains the details of the orders made by the customers.

```sql
CREATE TABLE ORDERS (
   OID INT NOT NULL,
   DATE VARCHAR (20) NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT DECIMAL (18, 2)
);
```
INSERT 
```sql
INSERT INTO ORDERS VALUES
(102, '2009-10-08 00:00:00', 3, 3000.00),
(100, '2009-10-08 00:00:00', 3, 1500.00),
(101, '2009-11-20 00:00:00', 2, 1560.00),
(103, '2008-05-20 00:00:00', 4, 2060.00);
```
Following SQL query deletes the records of the customers (from the tables CUSTOMERS and ORDERS) who earn more than 2000 and have placed orders −
```sql
DELETE CUSTOMERS, ORDERS FROM CUSTOMERS
INNER JOIN ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID
WHERE CUSTOMERS.SALARY > 2000;
```

###### ✅ Verification
```sql
SELECT * FROM CUSTOMERS;
```
```sql
SELECT * FROM ORDERS;
```

## ⬆️⬇️ SORTING Results

The SQL ORDER BY clause is used to sort the data in ascending or descending order, based on one or more columns. By default, some databases sort the query results in an ascending order.

###### Syntax
```sql
SELECT column-list 
FROM table_name 
[WHERE condition] 
[ORDER BY column1, column2, .. columnN] [ASC | DESC];
```

### ⬆️ Sorting Results in Ascending Order

Using Order By Clause in SQL, the records in a database table can be sorted in ascending order, either by default or by specifying the "ASC" keyword in the clause condition. Let us see an example to understand this.

###### </> Example
```sql
SELECT * FROM CUSTOMERS ORDER BY NAME;
```

### ⬇️ Sorting Results in Descending Order
But, to sort the records in a database table in descending order, we need to specify the "DESC" keyword in the clause condition. Let us see an example to understand this.

###### </> Example
```sql
SELECT * FROM CUSTOMERS ORDER BY NAME DESC;
```

### 📶 Sorting Results in a Preferred Order
One can also sort the records of a table in their own preferred order using the CASE statement within the ORDER BY clause. All the values are specified in the clause along with the position they are supposed to be sorted in; if the values are not given any number, they are automatically sorted in ascending order.

###### </> Example
```sql
SELECT * FROM CUSTOMERS
ORDER BY ( CASE ADDRESS
   WHEN 'DELHI' 	 THEN 1
   WHEN 'BHOPAL' 	 THEN 2
   WHEN 'KOTA' 	 THEN 3
   WHEN 'AHMEDABAD' THEN 4
   WHEN 'Hyderabad' 	THEN 5
   ELSE 100 END) ASC, ADDRESS DESC;
```