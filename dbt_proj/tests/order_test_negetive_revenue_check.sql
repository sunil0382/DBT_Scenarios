SELECT o_orderkey 
from {{ref('orders_fact')}}
where Revenue < 0