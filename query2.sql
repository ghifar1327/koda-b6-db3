SELECT 
    movies.id AS "id",
    movies.name AS "Title Movie",
    movies_genres.genre AS "Genre",
    directors.first_name AS "Director"
FROM movies
JOIN movies_directors
    ON movies.id = movies_directors.movie_id
JOIN movies_genres
    ON movies_genres.movie_id = movies.id
JOIN directors
    ON directors.id = movies_directors.director_id
LIMIT 50;



SELECT 
  actors.id AS "id", 
  actors.first_name AS "Actor", 
  movies.name AS "Title Movie"
FROM actors 
JOIN roles 
  ON roles.actor_id = actors.id 
JOIN movies 
  ON roles.movie_id = movies.id;