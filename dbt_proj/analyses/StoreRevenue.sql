
SELECT os.o_custkey ,sum(of.Revenue) AS TotalRevenue
FROM {{ref('order_stg')}} os 
JOIN {{ref('orders_fact')}} of on os.o_orderkey=of.o_orderkey
GROUP BY 1