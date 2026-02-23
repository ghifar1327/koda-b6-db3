-- no.1 
SELECT "id", "name", "year" FROM movies WHERE "year" > 2000 LIMIT 5;

-- no.2
SELECT "first_name" FROM actors  WHERE first_name ILIKE '%s' LIMIT 5;

-- no.3
SELECT * FROM movies WHERE "rankscore" BETWEEN 5 AND 7 AND "year" BETWEEN 2004 AND 2006 LIMIT 5;

-- no.4
SELECT COUNT(rankscore) FROM movies WHERE "rankscore"=6 ;

