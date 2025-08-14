-- Calculate the percentage contribution of each pizza type to total revenue.
select pt.category,round(sum(od.quantity*p.price)/(select sum(od.quantity*p.price) from order_details od 
join pizzas p on od.pizza_id = p.pizza_id)*100,2) as revenue from pizza_types pt 
join pizzas p on pt.pizza_type_id = p.pizza_type_id 
join order_details od on p.pizza_id = od.pizza_id
group by category
order by revenue desc