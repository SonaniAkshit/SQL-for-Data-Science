use sql_for_data_science;

-- CREATE TABLE Statement
create table customers(
    id int not null ,
    name varchar(20) not null ,
    age int not null ,
    address char(255) ,
    salary decimal(18,2),
    primary key (id)
);

INSERT INTO customers (ID,NAME,AGE,ADDRESS,SALARY) VALUES
                                                       (1, 'Chaitali', 25, 'Mumbai', 6500.00 ),
                                                       (2, 'Hardik', 27, 'Bhopal', 8500.00 ),
                                                       (3, 'Komal', 22, 'Hyderabad', 4500.00 );

desc customers;

-- CREATE TABLE IF NOT EXISTS

create table if not exists customers(
                                        id int not null ,
                                        name varchar(20) not null ,
    age int not null ,
    address char(255) ,
    salary decimal(18,2),
    primary key (id)
    );

-- Creating a Table from an Existing Table

create table salary as
select id,salary
from customers;

desc salary;

-- RENAME TABLE Statement

rename table salary to sal;

desc sal;

-- TRUNCATE TABLE Statement

truncate table sal;

select * from sal;

-- SQL - Clone Tables

-- 1) Simple Cloning in SQL

create table new_customers select * from customers;

select * from new_customers;

-- 2) Shallow Cloning in SQL

create table shall_customers like customers;

select * from shall_customers;

desc shall_customers;

-- 3) Deep Cloning in SQL

create table deep_customers like customers;

insert into deep_customers select * from customers;

select * from deep_customers;

-- SQL - Temporary Tables

create temporary table temp_customers(
    id int not null ,
    name varchar(20) not null ,
    age int not null ,
    address char(255) ,
    salary decimal(18,2),
    primary key (id)
);

show tables ;

-- Dropping Temporary Tables in SQL

drop temporary table temp_customers;

--  ALTER TABLE Statement

-- 1) ALTER TABLE − ADD Column

alter table customers add sex char(1);

desc customers;

-- 2) ALTER TABLE − DROP COLUMN

alter table customers drop column sex;
desc customers;

-- 3) ALTER TABLE − ADD INDEX

alter table customers add index name_index (NAME);

desc customers;

-- 4) ALTER TABLE − DROP INDEX

alter table customers drop index name_index;

desc customers;

-- 5) ALTER TABLE − ADD PRIMARY KEY

alter table customers add constraint primary key(id);

desc customers;

-- 6) ALTER TABLE − DROP PRIMARY KEY

alter table customers drop  primary key;

desc customers;

-- 7) ALTER TABLE − ADD CONSTRAINT

alter table customers add constraint const unique (name);

desc customers;

-- 8) ALTER TABLE − DROP CONSTRAINT

alter table customers drop constraint const;

desc customers;

-- 9) ALTER TABLE − RENAME COLUMN

alter table customers rename column name to full_name;

-- 10) ALTER TABLE − MODIFY DATATYPE

alter table customers modify column address varchar2(255);

-- DROP Table Statement

show tables;

drop table customer;

-- The IF EXISTS Clause

drop table if exists customer;

-- SQL - Constraints

-- all constraints available with example in readme...

-- watch & read readme, i'll mention all query with example and table in readme