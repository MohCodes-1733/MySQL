create database movieinfo;
use movieinfo;
create table movies (movie_id int primary key,title varchar(15),release_year int,director_id int);
create table directors (director_id int primary key,director_name varchar(15));
create table genres (genres_id int primary key,genre_name varchar(30));
create table moviegenres (movie_id int,genre_id int);
insert into movies values (1,'Pokiri',2006,1),(2,'Athadu',2005,2),(3,'Sakhi',2000,3),(4,'Chirutha',2007,1),(5,'Jalsa',2008,2);
insert into directors values (1,'Puri'),(2,'Trivikram'),(3,'ManiRatnam');
insert into genres values (1,'Romcom-Action-Drama'),(2,'Action-Comedy'),(3,'Romance-Drama');
insert into moviegenres values (1,1),(2,1),(3,3),(4,2),(5,2);


SELECT movies.title, directors.director_name
FROM movies JOIN directors
ON movies.director_id = directors.director_id;

SELECT movies.title, movies.release_year, directors.director_name
FROM movies LEFT JOIN directors 
ON movies.director_id = directors.director_id;

SELECT directors.director_name, movies.title 
FROM directors LEFT JOIN movies 
ON directors.director_id = movies.director_id;

SELECT movies.title, genres.genre_name 
FROM movies JOIN moviegenres 
ON movies.movie_id = moviegenres.movie_id JOIN genres ON moviegenres.genre_id = genres.genres_id;
