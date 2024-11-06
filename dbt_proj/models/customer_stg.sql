{{config(materialized='table')}}
select c.c_custkey,
c.C_NAME,
c.c_address,
n.n_name AS NATION,
c.c_phone,
c.c_acctbal,
c_mktsegment,
c.c_comment ,
c.updated_at  -- Adding the c_updated_at column
from sample_new.consumption.customer c 
join sample_new.consumption.nation n 
on c.c_nationkey=n.n_nationkey