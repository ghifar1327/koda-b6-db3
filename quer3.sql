-- no.1
SELECT 
    directors.first_name as "Director Name", 
    COUNT(directors_genres.genre) AS Genres 
FROM directors 
JOIN directors_genres 
    ON directors.id = directors_genres.director_id
GROUP BY directors.id

-- no.2
SELECT 
    actors.id, actors.first_name , 
    COUNT(roles.actor_id) AS total_role 
    FROM actors 
JOIN roles
    ON actors.id = roles.actor_id
GROUP BY actors.id
HAVING COUNT(roles.actor_id) > 5


-- no.3
SELECT 
    directors.first_name as "Director Name", 
    COUNT(directors.first_name) as "Total movie" 
FROM directors
JOIN movies_directors
    on directors.id = movies_directors.director_id
JOIN movies
    ON movies.id = movies_directors.movie_id
GROUP BY directors.id
ORDER BY "Total movie" DESC
LIMIT 1

-- no.4
SELECT 
    movies.year, 
    COUNT(movies.id) as "Total Release" 
FROM movies
GROUP BY movies.year
ORDER BY "Total Release" DESC
LIMIT 1

-- no.5
SELECT
    movies.name AS Movie,
    STRING_AGG(movies_genres.genre, ',')
FROM movies
JOIN movies_genres 
    ON movies.id = movies_genres.movie_id
GROUP BY movies.id
