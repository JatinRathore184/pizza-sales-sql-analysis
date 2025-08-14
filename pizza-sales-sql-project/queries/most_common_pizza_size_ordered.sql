-- Identify the most common pizza size ordered.
select p.size,count(od.order_id) from pizzas p
join order_details od on p.pizza_id = od.pizza_id
group by p.size
order by count(od.order_id) desc