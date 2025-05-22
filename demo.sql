use sqldatascience; # Database

/** Grocery list:
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2)
**/

create table groceries(
    id int primary key auto_increment,
    item varchar(100),
    quantity int
);

insert into groceries values(1,"Bananas",4);
insert into groceries values(2,"Peanut Butter",1),(3,"Dark Chocolate Bars",2);

select * from groceries;