## Grocery list :
    Bananas (4)
    Peanut Butter (1)
    Dark Chocolate Bars (2)
```sql
select * from groceries;
```
| id | item | quantity |
| :--- | :--- | :--- |
| 1 | Bananas | 4 |
| 2 | Peanut Butter | 1 |
| 3 | Dark Chocolate Bars | 2 |

```sql
select * from groceries order by aisle;
```
| id | item | quantity | aisle |
| :--- | :--- | :--- | :--- |
| 2 | Peanut Butter | 1 | 2 |
| 3 | Dark Chocolate Bars | 2 | 2 |
| 5 | Cherries | 6 | 2 |
| 6 | Chocolate syrup | 1 | 4 |
| 1 | Bananas | 4 | 7 |
| 4 | Ice cream | 1 | 12 |

```sql
select * from groceries where aisle>5 order by aisle;
```
| id | item | quantity | aisle |
| :--- | :--- | :--- | :--- |
| 1 | Bananas | 4 | 7 |
| 4 | Ice cream | 1 | 12 |
