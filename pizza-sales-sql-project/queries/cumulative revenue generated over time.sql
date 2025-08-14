-- Analyze the cumulative revenue generated over time.
select order_date,sum(revenue) over(order by order_date) as cummulative_revenue from 
(select o.order_date, sum(od.quantity*p.price) as revenue from order_details od
join pizzas p on od.pizza_id = p.pizza_id join orders o on
o.order_id =od.order_id
group by o.order_date) as sales
