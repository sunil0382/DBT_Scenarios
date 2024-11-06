SELECT os.o_custkey,
cs.C_NAME,
sum(OrderCount) AS OrderCount,
sum(Revenue) AS Revenue
FROM {{ref('orders_fact')}} os 
join {{ref('customer_stg')}} cs on cs.c_custkey=os.o_custkey
GROUP BY os.o_custkey,
cs.C_NAME