use
sqldatascience

select sum(quantity)
from groceries;

select max(quantity)
from groceries;

select count(item)
from groceries;



SELECT aisle, SUM(quantity)
FROM groceries
GROUP BY aisle;


SELECT item, SUM(quantity)
FROM groceries
GROUP BY aisle;