# 📑 SQL Table

## 📌 CREATE TABLE Statement

SQL provides the `CREATE TABLE` statement to create a new table in a given database. An SQL query to create a table must define the structure of a table. The structure consists of the name of a table and names of columns in the table with each column's data type. Note that each table must be uniquely named in a database.

#### Syntax
```sql
CREATE TABLE table_name(
   column1 datatype,
   column2 datatype,
   column3 datatype,
   .....
   columnN datatype,
   PRIMARY KEY( one or more columns )
);
```
#### </> Example
```sql
CREATE TABLE CUSTOMERS(
    ID          INT NOT NULL,
    NAME        VARCHAR (20) NOT NULL,
    AGE         INT NOT NULL,
    ADDRESS     CHAR (25),
    SALARY      DECIMAL (18, 2),
    PRIMARY KEY (ID)
);
```

####  ✅ Verification
Once your table is created, you can check if it has been created successfully or not. You can use SQL **`DESC table_name`** command to list down the description of the table.

#### Syntax
```sql
DESC CUSTOMERS;
```

## 📌 CREATE TABLE IF NOT EXISTS

Consider a situation where you will try to create a table which already exists, in such situation MySQL will throw the following error.

    ERROR 1050 (42S01): Table 'CUSTOMERS' already exists

So to avoid such error we can use SQL command `CREATE TABLE IF NOT EXISTS` to create a table.

#### Syntax
```sql
CREATE TABLE IF NOT EXISTS table_name(
   column1 datatype,
   column2 datatype,
   column3 datatype,
   .....
   columnN datatype,
   PRIMARY KEY( one or more columns )
);
```

#### </> Exmaple
```sql
CREATE TABLE IF NOT EXISTS CUSTOMERS(
    ID          INT NOT NULL,
    NAME        VARCHAR (20) NOT NULL,
    AGE         INT NOT NULL,
    ADDRESS     CHAR (25),
    SALARY      DECIMAL (18, 2),
    PRIMARY KEY (ID)
    );
```

## 📌 Creating a Table from an Existing Table

Instead of creating a new table every time, one can also copy an existing table and its contents including its structure, into a new table. This can be done using a combination of the CREATE TABLE statement and the SELECT statement. Since its structure is copied, the new table will have the same column definitions as the original table. Furthermore, the new table would be populated using the existing values from the old table.

#### Syntax
```sql
CREATE TABLE NEW_TABLE_NAME AS
SELECT [column1, column2...columnN]
FROM EXISTING_TABLE_NAME
WHERE Condition;
```

#### Example
```sql
CREATE TABLE SALARY AS
SELECT ID, SALARY
FROM CUSTOMERS;
```
## 📌 RENAME TABLE Statement

You can change a MySQL table name using SQL RENAME TABLE statement.

#### Syntax
```sql
RENAME TABLE table_name TO new_table_name;
```

Where, table_name is the current name of an existing table and new_table_name is the new name of the table.

#### </> Example
```sql
RENAME TABLE CUSTOMERS to BUYERS;
```

## 📌 ALTER TABLE Statement

The `ALTER TABLE` statement can be used to change or modify the structure of an existing table i.e. using this statement you can add/delete columns, create/destroy indexes, change the datatypes of the existing columns, rename the columns and, we can even rename the table.

#### Syntax
```sql
ALTER TABLE table_name RENAME [TO|AS] new_table_name
```

#### </> Example
```sql
ALTER TABLE BUYERS RENAME TO CUSTOMERS;
```

## 📌 TRUNCATE TABLE Statement
The SQL `TRUNCATE TABLE` command is used to empty a table. This command is a sequence of DROP TABLE and CREATE TABLE statements and requires the DROP privilege.

You can also use DROP TABLE command to delete a table but it will remove the complete table structure from the database and you would need to re-create this table once again if you wish you store some data again.

#### Syntax
```sql
TRUNCATE TABLE table_name;
```

#### Example
```sql
TRUNCATE TABLE CUSTOMERS;
```

#### ✅ Verification
```sql
SELECT * FROM CUSTOMERS;
```
    Empty set (0.00 sec)

## 📌 SQL - Clone Tables
There may be a situation when you need an exact copy of a table with the same columns, attributes, indexes, default values and so forth. Instead of spending time on creating the exact same version of an existing table, you can create a clone of the existing table.

SQL `Cloning Operation` allows to create the exact copy of an existing table along with its definition. There are three types of cloning possible using SQL in various RDBMS; they are listed below −

> - Simple Cloning
> - Shallow Cloning
> - Deep Cloning

#### 1) Simple Cloning in MySQL
Simple cloning operation creates a new replica table from the existing table and copies all the records in newly created table. To break this process down, a new table is created using the CREATE TABLE statement; and the data from the existing table, as a result of SELECT statement, is copied into the new table.

Here, clone table inherits only the basic column definitions like the NULL settings and default values from the original table. It does not inherit the indices and AUTO_INCREMENT definitions.

#### Syntax
```sql
CREATE TABLE new_table SELECT * FROM original_table;
```
#### </> Example
```sql
CREATE TABLE NEW_CUSTOMERS SELECT * FROM CUSTOMERS;
```
    Query OK, 7 rows affected (0.06 sec)
    Records: 7  Duplicates: 0  Warnings: 0

#### 2) Shallow Cloning in MySQL

Shallow cloning operation creates a new replica table from the existing table but does not copy any data records into newly created table, so only new but empty table is created.

Here, the clone table contains only the structure of the original table along with the column attributes including indices and AUTO_INCREMENT definition..

#### Syntax
```sql
CREATE TABLE new_table LIKE original_table;
```
#### </> Example
```sql
CREATE TABLE SHALL_CUSTOMERS LIKE CUSTOMERS;
```
    Query OK, 0 rows affected (0.06 sec)
#### ✅ Verification
```sql
DESC SHALL_CUSTOMERS;
```

#### 3) Deep Cloning in MySQL
Deep cloning operation is a combination of simple cloning and shallow cloning. It not only copies the structure of the existing table but also its data into the newly created table. Hence, the new table will have all the contents from existing table and all the attributes including indices and the AUTO_INCREMENT definitions.

Since it is a combination of shallow and simple cloning, this type of cloning will have two different queries to be executed: one with CREATE TABLE statement and one with INSERT INTO statement. The CREATE TABLE statement will create the new table by including all the attributes of existing table; and INSERT INTO statement will insert the data from existing table into new table.

#### Syntax
```sql
CREATE TABLE new_table LIKE original_table;
INSERT INTO new_table SELECT * FROM original_table;
```

#### </> Example
```sql
CREATE TABLE DEEP_CUSTOMERS LIKE CUSTOMERS;
    > Query OK, 0 rows affected (0.06 sec)
INSERT INTO DEEP_CUSTOMERS SELECT * FROM CUSTOMERS;
    > Query OK, 7 rows affected (0.01 sec)
    Records: 7  Duplicates: 0  Warnings: 0
```

#### ✅ Verification
```sql
SELECT * FROM DEEP_CUSTOMERS;
```

## 📌 SQL - Temporary Tables
To create temporary tables in MySQL, we follow the same query as creating regular database tables. However, instead of using the CREATE TABLE statement, you use `CREATE TEMPORARY TABLE statement`.

#### Syntax
```sql
CREATE TEMPORARY TABLE table_name(
   column1 datatype,
   column2 datatype,
   column3 datatype,
   .....
   columnN datatype,
   PRIMARY KEY( one or more columns )
);
```

#### </> Example
```sql
CREATE TEMPORARY TABLE CUSTOMERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
```

## 📌 Dropping Temporary Tables in MySQL

Though all the temporary tables are deleted by MySQL when your database connection gets terminated, still, if you want to delete them manually, then you can do so by issuing a DROP TEMPORARY TABLE command.

#### Syntax
```sql
DROP TEMPORARY TABLE table_name;
```
#### Example
```sql
DROP TEMPORARY TABLE CUSTOMERS;
```

## 📌 ALTER TABLE Statement
The SQL ALTER TABLE command is a part of Data Definition Language (DDL) and modifies the structure of a table. The ALTER TABLE command can add or delete columns, create or destroy indexes, change the type of existing columns, or rename columns or the table itself.

#### Syntax
```sql
ALTER TABLE table_name [alter_option ...];
```

### 1) ALTER TABLE − ADD Column

If you need to add a new column to a table, you should use the ADD COLUMN option along with ALTER TABLE statement as shown below −
```sql
ALTER TABLE table_name ADD column_name datatype;
```
#### </> Example
```sql
ALTER TABLE CUSTOMERS ADD SEX char(1);
```

### 2) ALTER TABLE − DROP COLUMN

If you need to drop an existing column from a table, you should use the DROP COLUMN option along with ALTER TABLE statement as shown below -
```sql
ALTER TABLE table_name DROP COLUMN column_name;
```
#### </> Example
```sql
ALTER TABLE CUSTOMERS DROP COLUMN SEX;
```
### 3) ALTER TABLE − ADD INDEX
You can add index to an existing column of a table using the ADD INDEX statement along with the ALTER statement −
```sql
ALTER TABLE table_name 
ADD INDEX index_name [index_type] 
```
#### </> Example
```sql
ALTER TABLE CUSTOMERS ADD INDEX name_index (NAME);
```

### 4) ALTER TABLE − DROP INDEX

You can drop an existing index from a table using the DROP INDEX statement along with the ALTER statement −
```sql
ALTER TABLE table_name DROP INDEX index_name;
```
#### </> Example
```sql
ALTER TABLE CUSTOMERS DROP INDEX name_index;
```

### 5) ALTER TABLE − ADD PRIMARY KEY

Following is the syntax to add a primary key in an existing table of a database −
```sql
ALTER TABLE table_name 
ADD CONSTRAINT constraint_name
PRIMARY KEY (column1, column2...);
```
#### </> Example
```sql
ALTER TABLE EMPLOYEES 
ADD CONSTRAINT MyPrimaryKey 
PRIMARY KEY(ID);
```

### 6) ALTER TABLE − DROP PRIMARY KEY
Following is the syntax to delete a primary key from an existing table of a database −
```sql
ALTER TABLE table_name DROP PRIMARY KEY;
```
#### </> Example
```sql
ALTER TABLE EMPLOYEES DROP PRIMARY KEY;
```

### 7) ALTER TABLE − ADD CONSTRAINT
#### Syntax
```sql
ALTER TABLE table_name 
ADD CONSTRAINT constraint_name 
UNIQUE(column1, column2...);
```
#### </> Example
```sql
ALTER TABLE EMPLOYEES ADD CONSTRAINT CONST UNIQUE(NAME);
```

### 8) ALTER TABLE − DROP CONSTRAINT
#### Syntax
```sql
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
```
#### </> Example
```sql
ALTER TABLE EMPLOYEES DROP CONSTRAINT CONST;
```

### 9) ALTER TABLE − RENAME COLUMN
#### Syntax
```sql
ALTER TABLE table_name 
RENAME COLUMN old_column_name to new_column_name;
```
#### Example
```sql
ALTER TABLE CUSTOMERS RENAME COLUMN name to full_name;
```

### 10) ALTER TABLE − MODIFY DATATYPE
#### Syntax
```sql
ALTER TABLE table_name MODIFY COLUMN column_name datatype;
```
#### </> Exmaple
```sql
ALTER TABLE CUSTOMERS MODIFY COLUMN ID DECIMAL(18, 4);
```

##  📌 DROP Table Statement
The SQL DROP TABLE statement is a Data Definition Language (DDL) command that is used to remove a table's definition, and its data, indexes, triggers, constraints and permission specifications (if any).

#### Syntax
```sql
DROP TABLE table_name;
```
#### </> Example
```sql
DROP TABLE CUSTOMERS;
```

### 📌 The IF EXISTS Clause

Instead of always checking if the table exists or not in a database before dropping it, you can use the IF EXISTS clause in the DROP TABLE statement.

#### Syntax
```sql
DROP TABLE [IF EXISTS] table_name;
```
#### </> Exmaple
```sql
DROP TABLE IF EXISTS CUSTOMERS;
```

## 📌 DROP - TEMPORARY TABLE

You can include TEMPORARY keyword with DROP TABLE statement which will drop only TEMPORARY tables. Including the TEMPORARY keyword is a good way to prevent accidentally dropping non-TEMPORARY tables.

#### Syntax
```sql
DROP TEMPORARY TABLE TEMP_TABLE;
```
#### Example
```sql
DROP TEMPORARY TABLE CUSTOMERS;
```

## 📌 SQL - Constraints
SQL Constraints are the rules applied to a data columns or the complete table to limit the type of data that can go into a table. When you try to perform any INSERT, UPDATE, or DELETE operation on the table, RDBMS will check whether that data violates any existing constraints and if there is any violation between the defined constraint and the data action, it aborts the operation and returns an error.

We can define a column level or a table level constraints. The column level constraints are applied only to one column, whereas the table level constraints are applied to the whole table.

### 📌 SQL Create Constraints
We can create constraints on a table at the time of a table creation using the CREATE TABLE statement, or after the table is created, we can use the ALTER TABLE statement to create or delete table constraints.
```sql
CREATE TABLE table_name (
   column1 datatype constraint,
   column2 datatype constraint,
   ....
   columnN datatype constraint
);
```

### 📌 NOT NULL Constraint
When applied to a column, NOT NULL constraint ensure that a column cannot have a NULL value. Following is the example to create a NOT NULL constraint:
```sql
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2)
);
```

### 📌 UNIQUE Key Constraint
When applied to a column, UNIQUE Key constraint ensure that a column accepts only UNIQUE values. Following is the example to create a UNIQUE Key constraint on column ID. Once this constraint is created, column ID can't be null and it will accept only UNIQUE values.
```sql
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL UNIQUE,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2)
);
```

### 📌 DEFAULT Value Constraint
When applied to a column, DEFAULT Value constraint provides a default value for a column when none is specified. Following is the example to create a DEFAULT constraint on column NAME. Once this constraint is created, column NAME will set to "Not Available" value if NAME is not set to a value.

```sql
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL UNIQUE,
   NAME VARCHAR (20) DEFAULT 'Not Available',
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2)
);
```

### 📌 PRIMARY Key Constraint
When applied to a column, PRIMARY Key constraint ensure that a column accepts only UNIQUE value and there can be a single PRIMARY Key on a table but multiple columns can constituet a PRIMARY Key. Following is the example to create a PRIMARY Key constraint on column ID. Once this constraint is created, column ID can't be null and it will accept only unique values.
```sql
CREATE TABLE CUSTOMERS(
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
```

### 📌 FOREIGN Key Constraint
FOREIGN Key constraint maps with a column in another table and uniquely identifies a row/record in that table. Following is an example to create a foreign key constraint on column ID available in CUSTOMERS table as shown in the statement below −
```sql
CREATE TABLE ORDERS (
   ID INT NOT NULL,
   DATE DATETIME,
   CUSTOMER_ID INT FOREIGN KEY REFERENCES CUSTOMERS(ID),
   AMOUNT DECIMAL,
   PRIMARY KEY (ID)
);
```
### 📌 CHECK Value Constraint
When applied to a column, CHECK Value constraint works like a validation and it is used to check the validity of the data entered into the particular column of the table. table and uniquely identifies a row/record in that table. Following is an example to create a CHECK validation on AGE column which will not accept if its value is below to 18.
```sql
CREATE TABLE CUSTOMERS(
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL CHECK(AGE>=18),
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
```

### 📌 INDEX Constraint

The INDEX constraints are created to speed up the data retrieval from the database. An Index can be created by using a single or group of columns in a table. A table can have a single PRIMARY Key but can have multiple INDEXES. An Index can be Unique or Non Unique based on requirements. Following is an example to create an Index on Age Column of the CUSTOMERS table.

```sql
CREATE INDEX idx_age ON CUSTOMERS ( AGE );
```

### 📌 Dropping SQL Constraints
Any constraint that you have defined can be dropped using the ALTER TABLE command with the DROP CONSTRAINT option. For example, to drop the primary key constraint from the CUSTOMERS table, you can use the following command.

```sql
ALTER TABLE CUSTOMERS DROP CONSTRAINT PRIMARY KEY;
```

<div align="center">

# End of SQL Table Operations

</div>