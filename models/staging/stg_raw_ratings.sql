WITH raw_ratings AS (
   SELECT * from MOVIELENS.RAW.RAW_RATINGS
)
SELECT 
   userId as user_id,
   movieId as movie_id,
   rating,
   TO_TIMESTAMP_LTZ(timestamp) AS rating_timestamp
FROM raw_ratings