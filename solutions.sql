-- 1. Top-rated movies after 2015
SELECT title, release_year, rating
FROM Movies
WHERE release_year > 2015
ORDER BY rating DESC, release_year DESC
LIMIT 5;

-- 2. Directors with at least 3 movies
SELECT d.name AS director_name,
       COUNT(m.movie_id) AS number_of_movies
FROM Directors d
JOIN Movies m ON d.director_id = m.director_id
GROUP BY d.name
HAVING COUNT(m.movie_id) >= 3;

-- 3. Actors who never played a lead role
SELECT a.name AS actor_name
FROM Actors a
WHERE a.actor_id NOT IN (
    SELECT actor_id
    FROM Movie_Cast
    WHERE role = 'Lead'
);

-- 4. Top 3 most profitable movies
SELECT m.title,
       (b.revenue - b.budget) AS profit
FROM Movies m
JOIN BoxOffice b ON m.movie_id = b.movie_id
ORDER BY profit DESC
LIMIT 3;

-- 5. Average rating by director country
SELECT d.country,
       AVG(m.rating) AS average_rating
FROM Directors d
JOIN Movies m ON d.director_id = m.director_id
GROUP BY d.country
HAVING COUNT(m.movie_id) >= 5;
