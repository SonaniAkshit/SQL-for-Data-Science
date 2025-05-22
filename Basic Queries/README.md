## Grocery list :
    Bananas (4)
    Peanut Butter (1)
    Dark Chocolate Bars (2)
```sql
select * 
from groceries;
```
| id | item | quantity |
| :--- | :--- | :--- |
| 1 | Bananas | 4 |
| 2 | Peanut Butter | 1 |
| 3 | Dark Chocolate Bars | 2 |

```sql
select * 
from groceries 
order by aisle;
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
select * 
from groceries 
where aisle>5 
order by aisle;
```
| id | item | quantity | aisle |
| :--- | :--- | :--- | :--- |
| 1 | Bananas | 4 | 7 |
| 4 | Ice cream | 1 | 12 |

## Movie List

    This database contains an incomplete list of box office hits and their release year.
    In this challenge, you're going to get the results back out of the database in different ways!
    In this first step, just select all the movies.
```sql
select *
from movies;
```
| id | name | release\_year |
| :--- | :--- | :--- |
| 1 | Avatar | 2009 |
| 2 | Titanic | 1997 |
| 3 | Star Wars: Episode IV - A New Hope | 1977 |
| 4 | Shrek 2 | 2004 |
| 5 | The Lion King | 1994 |
| 6 | Disney's Up | 2009 |

    Now, add a second query after the first, that retrieves only the movies that were released in the year 2000 or later, not before.
    Sort the results so that the earlier movies are listed first. You should have 2 SELECT statements after this step.
 
```sql
select * 
from movies 
where release_year>=2000;
```
| id | name | release\_year |
| :--- | :--- | :--- |
| 1 | Avatar | 2009 |
| 4 | Shrek 2 | 2004 |
| 6 | Disney's Up | 2009 |

    Can you add an ORDER BY to your second query, so that the earliest movies are listed first in the results?
```sql
select *
from movies
where release_year >= 2000
order by release_year;
```
| id | name | release\_year |
| :--- | :--- | :--- |
| 4 | Shrek 2 | 2004 |
| 1 | Avatar | 2009 |
| 6 | Disney's Up | 2009 |
