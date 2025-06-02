# 🗄️ SQL Database

## 📌 CREATE Database Statement
The **CREATE DATABASE statement** is a **DDL (Data Definition Language)** statement used to create a new database in SQL. If you are creating your database on Linux or Unix, then database names are case-sensitive, even though SQL keywords are case-insensitive. If you are working on Windows then this restriction does not apply.

###### Syntax
```sql
create Database DatabseName;
```
###### </> Example
```sql
create Database sql_for_data_science;
```
## 📌 List Databases
Once the database sql_for_data_science is created, you can check it in the list of databases using SQL command SHOW DATABASES;.

###### Syntax
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

###### Syntax
```sql
use sql_for_data_science;
```
## 📌 DROP Database Statement

The SQL **DROP DATABASE** statement is used to delete an existing database along with all the data such as tables, views, indexes, stored procedures, and constraints.

###### Syntax
```sql
DROP DATABASE DatabaseName;
```

###### </> Example
```sql
DROP DATABASE sql_for_data_science;
```

## 📌 ALTER DATABASE...MODIFY Statement

The **ALTER DATABASE...MODIFY** statement in SQL is used to rename the name of an existing database name in SQL Database Server. Please note that this command does not work in MySQL database.

###### Syntax
```sql
ALTER DATABASE OldDatabaseName MODIFY NAME = NewDatabaseName;
```
###### </> Exmaple
```sql
ALTER DATABASE sql_for_data_science MODIFY NAME = sql_for_datascience; 
```

## 📌 Backup Database Statement

In SQL, the BACKUP DATABASE statement is used to create database backups.

###### Syntax
```sql
BACKUP DATABASE database_name
TO DISK = 'filepath'
GO
```

## 📌 Types of Backups in SQL

In SQL, there are three types of database backups available. These are: 

- Full Backup
- Differential Backup
- Transaction Log (T-log) backup

#### 1) SQL Full Backup

A full backup is a complete backup of an SQL server database.

###### Syntax
```sql
BACKUP DATABASE database_name
TO medium = 'filepath'
GO
```

#### 2) SQL Differential Backup

In Sql, you can also backup only the new changes by using the WITH DIFFERENTIAL command.

###### Syntax
```sql
BACKUP DATABASE my_db
TO medium = 'filepath'
WITH DIFFERENTIAL;
GO
```

#### 3) Transaction Log (T-log) backup
A transaction log backup includes all the transactions since the last transaction log backup. BACKUP LOG comnmand is used to perfom the Transaction Log backup.

###### Syntax
```sql
BACKUP LOG database_name
TO medium = 'filepath';
GO
```

### 📌 Backup SQL Database
###### Syntax
```sql
RESTORE DATABASE database_name
FROM DISK = 'filepath';
GO
```
###### </> Example
```sql
SQL> BACKUP DATABASE testDB
TO DISK = 'D:\testDB.bak'
GO
```

## 📌 Restore Database From Backup
To restore a backup file in Database, we can use the RESTORE DATABASE command.

###### Syntax
```sql
RESTORE DATABASE database_name
FROM DISK = 'filepath'
[WITH REPLACE]
GO
```
###### </> Example
```sql
SQL> RESTORE DATABASE testDB
FROM DISK = 'D:\testDB.bak'
WITH REPLACE
GO
```

<div align="center">

# End of SQL Database Operations

</div>
