-- select * from moviesdb.movies; 

use moviesdb;
select * from movies;

select title from movies;
select title, release_year from movies;

-- Get me movie_id, title, release_year & imdb_rating of all the Bollywood movies
select movie_id, title, release_year, imdb_rating
from movies
where industry = "Bollywood";

-- Print all the industries present in the dataset
select distinct(industry)
from movies;

-- Print title when user searches "Thor"
select title
from movies
-- where title like "%Thor"  -- titles ending with "Thor"
-- where title like "Thor%"  -- titles starting with "Thor"
where title like "%Thor%"; -- titles containing "Thor" 

-- Get me the title & imdb_rating when user searches "Avenger"
select title, imdb_rating
from movies
where title like "%Avenger%";

-- Give me movies with rating at least 8
select *
from movies
where imdb_rating >= 8;

-- Print names, ratings, industry and production studios of the movies which have got at least 5 ratings on imdb but have not got more than 9 ratings
select title, imdb_rating, industry, studio
from movies
-- where imdb_rating >= 5 and imdb_rating <= 9;
-- where 5<=Imdb_rating and imdb_rating<=9 ;
where imdb_rating between 5 and 9;

-- Give me all the details of the movies with rating between 1 to 4 (including both)

-- Give me all the Bollywood movies with rating more than 7 (titles, ratings & studio)
select title, imdb_rating, studio 
from movies 
where industry ="Bollywood" and imdb_rating >7;

-- Print titles & release_year of all the movies from Marvel Studios

-- Print all the movies which have “The” in them and have rating between 5 to 9 (including both)

-- Print the year in which the movie Godfather was released

-- Print all the movie studios of Bollywood.

-- Give me all the movies released in the years 2015, 2016, 2017 or 2018.