{{ config(materialized='table') }}

select distinct * from "SNOWFLAKE_SAMPLE_SHARE_DATA"."TPCH_SF100"."CUSTOMER"
where c_custkey IN (select distinct c_custkey  from "SNOWFLAKE_SAMPLE_SHARE_DATA"."TPCH_SF100"."CUSTOMER")
