
  create or replace   view MOVIELENS.DEV.src_movies
  
   as (
    with raw_movies  as (
    select * from MOVIELENS.RAW.RAW_MOVIES
)

SELECT 
    movieId AS movie_id,
    title,
    genres
from raw_movies
  );

