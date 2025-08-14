-- List the top 5 most ordered pizza types along with their quantities.
select pt.name,sum(od.quantity) as quantity
from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id
join order_details od on p.pizza_id = od.pizza_id
group by pt.name
order by quantity desc limit 5