
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT
movie_id,
tag_id,
relevance_score
FROM MOVIELENS.DEV.fct_genome_scores
WHERE relevance_score <= 0
  
  
      
    ) dbt_internal_test