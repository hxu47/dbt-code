select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ID
from PROD.DBT_TRANSFORM.CREDITS_DIM
where ID is null



      
    ) dbt_internal_test