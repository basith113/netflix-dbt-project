with fct_movie_w_tags as (
    select * from {{ ref('dim_movies_with_tag') }}
)

select 
    fct_movie_w_tags.*, 
    -- If genres column exists
    fct_movie_w_tags.genres
from fct_movie_w_tags