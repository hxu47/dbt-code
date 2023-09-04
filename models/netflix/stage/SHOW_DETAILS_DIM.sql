{{ config(
    pre_hook="ALTER SESSION SET QUOTED_IDENTIFIERS_IGNORE_CASE = true",
    materialized='table'
) }}

{{ config(
    tags=[var('TAG_DIMENSION')]
) }}


SELECT
ID
,TITLE
,TYPE
,DESCRIPTION
,RELEASE_YEAR
,AGE_CERTIFICATION
,RUNTIME
,GENRES
,PRODUCTION_COUNTRIES
,SEASONS
FROM
{{ source('netflix', 'TITLES') }}
