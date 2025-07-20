
  
    

        create or replace transient table MOVIELENS.DEV.dim_genome_tags
         as
        (with src_tags as (
    select * from MOVIELENS.DEV.src_genome_tags
)
select 
    tag_id,
    initcap(trim(tag)) as tag_name
from src_tags
        );
      
  