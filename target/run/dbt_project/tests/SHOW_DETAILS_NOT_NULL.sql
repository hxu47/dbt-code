select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT * FROM PROD.DBT_PROD.MOVIES_SERIES_SHARE WHERE GENRES IS NULL
      
    ) dbt_internal_test