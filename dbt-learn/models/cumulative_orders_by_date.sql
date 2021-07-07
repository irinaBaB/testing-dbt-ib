
{{ config(materialized='table') }}

select distinct
       o_orderdate,
       sum (o_totalprice) over (order by o_orderdate) as cumulative_sales
from "SNOWFLAKE_SAMPLE_SHARE_DATA"."TPCH_SF1".orders