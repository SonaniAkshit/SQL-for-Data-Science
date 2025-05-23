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

### Computing Using SELECT

The SQL SELECT statement can also be used to retrieve the results of various mathematical computations in the form of a table. In such cases, you do not need to specify any database table in the statement.

###### Syntax
```sql
SELECT mathematical_expression;
```

###### </> Example
```sql
SELECT 56*65;
```

### Aliasing a Column in SELECT Statement

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

