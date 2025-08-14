-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select name, category, revenue from
(select category, name, revenue,
rank() over(partition by category order by revenue desc) as rn from  
(select pt.category,pt.name,sum(od.quantity*p.price) as revenue from pizza_types pt
join pizzas p on pt.pizza_type_id = p.pizza_type_id
join order_details od on p.pizza_id = od.pizza_id
group by pt.category,pt.name
order by revenue desc) as a)as b -- we can't use rank directly in where clause so we have to meke another subquery
where rn<=3