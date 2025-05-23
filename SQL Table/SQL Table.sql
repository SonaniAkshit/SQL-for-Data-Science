-- 📌 CREATE TABLE Statement

create table customers
(
    id      int         not null,
    name    varchar(20) not null,
    age     int         not null,
    address char(25),
    salary  decimal(20, 2),
    primary key (id)
);

desc new_customers;

INSERT INTO customers (id, name, age, address, salary)
VALUES (1, 'Alice', 28, 'New York', 55000.00),
       (2, 'Bob', 35, 'Los Angeles', 62000.00),
       (3, 'Charlie', 30, 'Chicago', 58000.00),
       (4, 'David', 40, 'Houston', 72000.00),
       (5, 'Eve', 26, 'Phoenix', 48000.00),
       (6, 'Frank', 38, 'Philadelphia', 69000.00),
       (7, 'Grace', 31, 'San Antonio', 53000.00),
       (8, 'Heidi', 29, 'San Diego', 60000.00),
       (9, 'Ivan', 34, 'Dallas', 64000.00),
       (10, 'Judy', 27, 'San Jose', 51000.00),
       (11, 'Karl', 36, 'Austin', 70000.00),
       (12, 'Laura', 33, 'Jacksonville', 62000.00),
       (13, 'Mallory', 41, 'Fort Worth', 75000.00),
       (14, 'Niaj', 25, 'Columbus', 46000.00),
       (15, 'Olivia', 32, 'Charlotte', 59000.00),
       (16, 'Peggy', 37, 'Indianapolis', 68000.00),
       (17, 'Quentin', 29, 'Seattle', 61000.00),
       (18, 'Rupert', 39, 'Denver', 72000.00),
       (19, 'Sybil', 28, 'Washington', 56000.00),
       (20, 'Trent', 35, 'Boston', 63000.00);


--  📌 CREATE TABLE IF NOT EXISTS

create table if not exists customers
(
    id
    int
    not
    null,
    name
    varchar
(
    20
) not null ,
    age int not null ,
    address char
(
    25
),
    salary decimal
(
    20,
    2
),
    primary key
(
    id
)
    );


--  📌 Creating a Table from an Existing Table

create table salary as
select id, salary
from customers;

--  📌 RENAME TABLE Statement

rename
table salary to sal;

--  📌 ALTER TABLE Statement

alter table sal rename salary;

-- 📌 TRUNCATE TABLE Statement

truncate table salary;

select *
from salary;

-- 📌 SQL - Clone Tables
--  1) Simple Cloning in MySQL
create table new_customers select * from customers;

desc new_customers;

select *
from new_customers;

--  2) Shallow Cloning in MySQL

create table shall_customers like customers;

select *
from shall_customers;

desc shall_customers;

--  3) Deep Cloning in MySQL

create table deep_customers like customers;

insert into deep_customers
select *
from customers;

select *
from deep_customers;
