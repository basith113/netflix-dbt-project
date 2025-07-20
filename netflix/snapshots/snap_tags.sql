{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshots',
        unique_key=['user_id', 'movie_id', 'tag'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidate_hard_deletes=True
    )
}}

select 
    {{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag']) }} as raw_key,
    user_id,
    movie_id,
    tag,
    cast(tag_timestamp as timestamp_ntz) as tag_timestamp
from {{ ref('src_tags') }}
limit 100

{% endsnapshot %}