-- no.1
SELECT movies.name, movies.year, movies.year , movies.rankscore ,directors.first_name, movies_genres.genre
FROM movies
JOIN movies_directors
  ON movies.id = movies_directors.movie_id
JOIN directors
  ON directors.id = movies_directors.director_id
JOIN movies_genres
  ON movies.id = movies_genres.movie_id
LIMIT 50;


SELECT actors.first_name as "actors", movies.name as "movies_title", roles."role" FROM actors
JOIN roles 
    ON actors.id = roles.actor_id
JOIN movies 
    ON roles.movie_id = movies.id
LIMIT 50


SELECT * FROM roles LIMIT 1
-- SELECT * From movies_directors limit 50;

-- SELECT * FROM movies_genres limit 1

-- SELECT "actors"."first_name" FROM actors

-- SELECT * FROM actors limit 1


-- SELECT * FROM role limit 1