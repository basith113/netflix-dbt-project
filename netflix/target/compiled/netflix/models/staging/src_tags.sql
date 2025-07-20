with raw_tags  as (
    select * from MOVIELENS.RAW.raw_tags
)

SELECT 
    userId as user_id,
  movieId as movie_id,
  tag,
  to_timestamp(timestamp) as tag_timestamp
from raw_tags