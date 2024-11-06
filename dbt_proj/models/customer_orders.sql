{{config(materialized='table')}}

WITH CUSTOMER_ORDER AS(
select C_CUSTKEY Customer_ID,C_NAME Customer_Name,count(o.o_orderkey) No_of_Orders from CUSTOMER c 
join ORDERS o on c.c_custkey =o.O_CUSTKEY
group by C_CUSTKEY,Customer_Name
order by no_of_orders desc
)

select Customer_ID,Customer_Name,No_of_Orders from CUSTOMER_ORDER