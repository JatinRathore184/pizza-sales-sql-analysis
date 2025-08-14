-- Calculate the total revenue generated from pizza sales.
select round(sum(od.quantity*p.price),2) as revenue
from pizzas p join order_details od on p.pizza_id = od.pizza_id