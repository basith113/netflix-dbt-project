with  __dbt__cte__dim_movies_with_tag as (


WITH movies AS (
    SELECT * FROM MOVIELENS.DEV.dim_movies
),
tags AS (
    SELECT * FROM MOVIELENS.DEV.dim_genome_tags
),
scores AS (
    SELECT * FROM MOVIELENS.DEV.fct_genome_scores
)
    SELECT
        m.movie_id,
        m.movie_title,
        m.genres,
        t.tag_name,
        s.relevance_score
FROM movies m
LEFT JOIN scores s ON m.movie_id = s.movie_id
LEFT JOIN tags t ON t.tag_id = s.tag_id
), fct_movie_w_tags as (
    select * from __dbt__cte__dim_movies_with_tag
)

select 
    fct_movie_w_tags.*, 
    -- If genres column exists
    fct_movie_w_tags.genres
from fct_movie_w_tags