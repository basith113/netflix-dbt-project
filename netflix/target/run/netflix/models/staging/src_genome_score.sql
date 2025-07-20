
  create or replace   view MOVIELENS.DEV.src_genome_score
  
   as (
    with raw_genome_scores  as (
    select * from MOVIELENS.RAW.raw_genome_scores
)

SELECT 
    movieId as movie_id,
    tagId as tag_id,
    relevance 
from raw_genome_scores
  );

