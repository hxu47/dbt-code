{{ config(
    pre_hook="ALTER SESSION SET QUOTED_IDENTIFIERS_IGNORE_CASE = true",
    materialized='table'
) }}

{{ config(
    tags=[var('TAG_DIMENSION')]
) }}

SELECT 
* 
FROM PROD.DBT_RAW.CREDITS
WHERE ROLE IN ('ACTOR','DIRECTOR')
