INSERT INTO Directors VALUES
(1, 'Christopher Nolan', 'UK'),
(2, 'Quentin Tarantino', 'USA'),
(3, 'Steven Spielberg', 'USA'),
(4, 'Denis Villeneuve', 'Canada');

INSERT INTO Movies VALUES
(1, 'Inception', 2010, 148, 8.8, 1),
(2, 'Dunkirk', 2017, 106, 7.9, 1),
(3, 'Pulp Fiction', 1994, 154, 8.9, 2),
(4, 'Once Upon a Time in Hollywood', 2019, 161, 7.6, 2),
(5, 'Jurassic Park', 1993, 127, 8.1, 3),
(6, 'Schindlers List', 1993, 195, 8.9, 3),
(7, 'Arrival', 2016, 116, 7.9, 4),
(8, 'Dune', 2021, 155, 8.0, 4);

INSERT INTO Actors VALUES
(1, 'Leonardo DiCaprio', 1974),
(2, 'Brad Pitt', 1963),
(3, 'Samuel L. Jackson', 1948),
(4, 'Matthew McConaughey', 1969),
(5, 'Timothée Chalamet', 1995);

INSERT INTO Movie_Cast VALUES
(1, 1, 'Lead'),
(3, 3, 'Lead'),
(4, 1, 'Supporting'),
(4, 2, 'Lead'),
(7, 4, 'Lead'),
(8, 5, 'Lead');

INSERT INTO BoxOffice VALUES
(1, 160000000, 836000000),
(2, 100000000, 527000000),
(3, 8000000, 214000000),
(4, 90000000, 374000000),
(5, 63000000, 1046000000),
(6, 22000000, 322000000),
(7, 47000000, 203000000),
(8, 165000000, 402000000);
