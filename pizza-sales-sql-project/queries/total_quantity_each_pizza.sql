-- Join the necessary tables to find the total quantity of each pizza category ordered.
select pt.category as category, sum(od.quantity) as total_quantity from pizza_types pt
join pizzas p on pt.pizza_type_id = p.pizza_type_id
join order_details od on p.pizza_id = od.pizza_id
group by category
order by total_quantity desc