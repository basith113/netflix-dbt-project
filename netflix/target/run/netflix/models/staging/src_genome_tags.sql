
  create or replace   view MOVIELENS.DEV.src_genome_tags
  
   as (
    with raw_genome_tags  as (
    select * from MOVIELENS.RAW.raw_genome_tags
)

SELECT 
    tagId as tag_id,
    tag 
from raw_genome_tags
  );

