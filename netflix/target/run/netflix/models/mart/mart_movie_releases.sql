
  
    

        create or replace transient table MOVIELENS.DEV.mart_movie_releases
         as
        (

WITH fct_ratings AS (
    SELECT * FROM MOVIELENS.DEV.fct_rating
),
seed_dates AS (
    SELECT * FROM MOVIELENS.DEV.seed_movie_release
)
SELECT 
    f.*,
    CASE
        WHEN d.release_date IS NULL THEN 'unknown'
        ELSE 'known'
    END AS release_status
FROM fct_ratings f
LEFT JOIN seed_dates d
    ON f.movie_id = d.movie_id
        );
      
  