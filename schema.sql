CREATE TABLE Directors (
    director_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    duration INT,
    rating DECIMAL(2,1),
    director_id INT,
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_year INT
);

CREATE TABLE Movie_Cast (
    movie_id INT,
    actor_id INT,
    role VARCHAR(50),
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

CREATE TABLE Box_Office (
    movie_id INT PRIMARY KEY,
    budget BIGINT,
    revenue BIGINT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
