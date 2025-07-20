
  
    

        create or replace transient table MOVIELENS.DEV.dim_movies
         as
        (with src_movies as (
    select * from MOVIELENS.DEV.src_movies
)
select 
    movie_id,
    initcap(trim(title)) as movie_title,
    split(genres,'|') as genre_array
from src_movies
        );
      
  