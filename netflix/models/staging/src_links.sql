with raw_links  as (
    select * from MOVIELENS.RAW.raw_links
)

SELECT 
    movieId as movie_id,
    imdbId as imdb_id,
    tmdbId as tmdb_id
from raw_links