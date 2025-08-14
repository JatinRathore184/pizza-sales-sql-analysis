-- Group the orders by date and calculate the average number of pizzas ordered per day.
select round(avg(no_of_orders),0) from (select sum(od.quantity) as no_of_orders, day(o.order_date)
from orders o join order_details od on o.order_id = od.order_id
group by o.order_date)as order_quantity