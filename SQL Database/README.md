# 🗄️ SQL Database

## 📌 CREATE Database Statement
The **CREATE DATABASE statement** is a **DDL (Data Definition Language)** statement used to create a new database in SQL. If you are creating your database on Linux or Unix, then database names are case-sensitive, even though SQL keywords are case-insensitive. If you are working on Windows then this restriction does not apply.

#### Syntax
```sql
create Database DatabseName;
```
#### Example
```sql
create Database sql_for_data_science;
```
## 📌 List Databases
Once the database sql_for_data_science is created, you can check it in the list of databases using SQL command SHOW DATABASES;.

#### Syntax
```sql
show databses;
```
| Database |
| :--- |
| bookstore |
| carlux |
| clgdb |
| demo |
| fashionfusion |
| information\_schema |
| jspdb |
| mysql |
| performance\_schema |
| phpmyadmin |
| sql\_for\_data\_science |
| test |

## 📌 Use/Select Databases

We can now set the sql_for_data_science as the default database by using the USE statement in SQL.

#### Syntax
```sql
use sql_for_data_science;
```
## 📌 DROP Database Statement

The SQL **DROP DATABASE** statement is used to delete an existing database along with all the data such as tables, views, indexes, stored procedures, and constraints.

##### Syntax
```sql
DROP DATABASE DatabaseName;
```

##### Example
```sql
DROP DATABASE sql_for_data_science;
```