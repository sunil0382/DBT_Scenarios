WITH CUSTOMER_REVENUE AS(
select C_CUSTKEY Customer_ID,C_NAME Customer_Name,count(o.o_orderkey) No_of_Orders,
sum(i.l_quantity*i.l_extendedprice) AS REVENUE
from CUSTOMER c 
join ORDERS o on c.c_custkey =o.O_CUSTKEY
join orderitems i on i.l_orderkey=o.o_orderkey
group by C_CUSTKEY,Customer_Name
order by no_of_orders desc
)

select Customer_ID,Customer_Name,No_of_Orders,REVENUE from CUSTOMER_REVENUE