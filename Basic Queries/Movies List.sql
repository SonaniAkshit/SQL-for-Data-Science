use
sqldatascience;

/** Movies List:
This database contains an incomplete list of box office hits and their release year.
In this challenge, you're going to get the results back out of the database in different ways!
In this first step, just select all the movies.
**/

-- Output of all select queries in the README.md File so, check it...

CREATE TABLE movies
(
    id           INTEGER PRIMARY KEY,
    name         TEXT,
    release_year INTEGER
);

INSERT INTO movies
VALUES (1, "Avatar", 2009);
INSERT INTO movies
VALUES (2, "Titanic", 1997);
INSERT INTO movies
VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies
VALUES (4, "Shrek 2", 2004);
INSERT INTO movies
VALUES (5, "The Lion King", 1994);
INSERT INTO movies
VALUES (6, "Disney's Up", 2009);

select *
from movies;

/**
  Now, add a second query after the first, that retrieves only the movies that were released in the year 2000 or later, not before.
  Sort the results so that the earlier movies are listed first. You should have 2 SELECT statements after this step.
 */

select *
from movies
where release_year >= 2000;

-- Can you add an ORDER BY to your second query, so that the earliest movies are listed first in the results?

select *
from movies
where release_year >= 2000
order by release_year;