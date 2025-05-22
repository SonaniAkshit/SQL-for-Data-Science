use sqldatascience;

/** Grocery list:
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2)
**/

create table groceries
(
    id       int primary key auto_increment,
    item     varchar(100),
    quantity int
);

insert into groceries
values (1, "Bananas", 4);
insert into groceries
values (2, "Peanut Butter", 1),
       (3, "Dark Chocolate Bars", 2);

select *
from groceries;

alter table groceries
    add aisle int;

delete
from groceries;

INSERT INTO groceries
VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries
VALUES (2, "Peanut Butter", 1, 2);
INSERT INTO groceries
VALUES (3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries
VALUES (4, "Ice cream", 1, 12);
INSERT INTO groceries
VALUES (5, "Cherries", 6, 2);
INSERT INTO groceries
VALUES (6, "Chocolate syrup", 1, 4);

select *
from groceries
order by aisle;

select *
from groceries
where aisle > 5
order by aisle;