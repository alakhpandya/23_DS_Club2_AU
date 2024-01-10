-- 1. Print the number of movie titles present in the dataset.

-- 2. How many Bollywood movies are there in the dataset?

-- 3. Give me the total number of movies released in years 2013, 2017 & 2022
use moviesdb;
select count(title)
from movies
where release_year IN (2013, 2017, 2022);

-- 4. Give me the movies for which imdb_rating is not available.

select * 
from movies
where imdb_rating IS null;

-- 5. Give me only those movies for which imdb_ratings are available.

-- 6. Print movie titles & their imdb ratings along with their studio & industry in a way so that the most popular movie comes first & least comes last.

select * from movies;

select title, imdb_rating,studio,industry 
from movies 
order by 2 desc;

-- 7. Print the entire table in a way so that older movies come first and latest movies goes down.

-- 8. Print all details of 5 most recent movies.

SELECT * FROM movies
ORDER BY release_year DESC
LIMIT 5;

-- 9. We have organized an award ceremony for these movies. Top 3 movies are getting the bumper prizes which have been already announced. 
-- Now we want to give condolence prizes to the movies which stood from rank 4th till 10th according to their imdb_rating. 
-- You are asked to print titles and ratings of these movies.

select title, imdb_rating
from movies
order by 2 desc
limit 7 offset 3;

-- 10. What is the maximum imdb_rating awarded to any movie ever?

-- 11. Print the least, highest & average values of imdb_ratings

-- 12. Rename the columns & round off the average value to 1 decimal place in the above query

-- 13. Print the average imdb_rating of the “Vinod Chopra Films” studio rounded off after 1 decimal place

-- 14. Please print the table in the following format:
/*
movie_id	title							release_year	imdb_rating		studio
101			K.G.F: Chapter 2 | Bollywood	2022			8.4				Hombale Films
*/

-- 15. Print only first character of title of each movie.
-- select left(title,1)
-- from movies;

-- select substring(title, 3, 7), substr(title, 3, 7)
-- FROM movies;

-- select substr(title, 3, 7)
-- from movies;

-- 16. Print the titles of movies in a way that first character of title of every movie is capitalized and every other character in lower case.

select concat(upper(substr(title, 1, 1)), lower(substr(title, 2)))
from movies;

-- 17. Replace empty imdb_rating by 0

select movie_id, title, industry, release_year, coalesce(imdb_rating, 0) as imdb_rating, studio, language_id
from movies;