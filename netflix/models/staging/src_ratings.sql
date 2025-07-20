with raw_ratings  as (
    select * from MOVIELENS.RAW.raw_ratings
)

SELECT 
    userId as user_id,
  movieId as movie_id,
  rating ,
  to_timestamp(timestamp) as rating_timestamp
from raw_ratings