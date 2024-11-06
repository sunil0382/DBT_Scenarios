SELECT o.o_orderkey,
o.o_custkey,
o.o_orderstatus,
o.o_totalprice,
o.o_orderpriority,
o.o_clerk,
o_orderdate,
o.o_shippriority,
count(o.o_orderkey) OrderCount,
sum(i.TotalPrice) AS Revenue
FROM {{ref('order_stg')}} o JOIN {{ref('orderitems_stg')}} i on o.o_orderkey=i.l_orderkey
GROUP BY 
o.o_orderkey,
o.o_custkey,
o.o_orderstatus,
o.o_totalprice,
o.o_orderpriority,
o.o_clerk,
o_orderdate,
o.o_shippriority