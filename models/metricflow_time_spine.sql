{{ config(materialized='table') }}

WITH date_spine AS (
    SELECT
        DATEADD(day, seq4(), '2010-01-01') AS date_day
    FROM TABLE(GENERATOR(ROWCOUNT => 10000))
)

SELECT * FROM date_spine