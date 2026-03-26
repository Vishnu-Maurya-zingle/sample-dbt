WITH src_movies AS (
   SELECT * FROM {{ ref('stg_raw_movies')}}
)
SELECT 
   movie_id,
   INITCAP(TRIM(title)) as movie_title,
   SPLIT(genres, '|') AS genre_array,
   genres
FROM src_movies 