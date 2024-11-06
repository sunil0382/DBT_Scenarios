{{config(materialized='incremental', unique_key='o_orderkey')}}
SELECT 
    o_orderkey,
    o_custkey,
    o_orderstatus,
    o_totalprice,
    o_orderdate,
    o_orderpriority,
    o_clerk,
    o_shippriority,
    o_comment
FROM 
    sample_new.consumption.orders o where o_orderkey>599999000
