WITH raw_movies AS (
   SELECT * from MOVIELENS.RAW.RAW_MOVIES
)
SELECT 
   movieId as movie_id,
   title,
   genres
FROM raw_movies