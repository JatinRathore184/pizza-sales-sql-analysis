-- Determine the distribution of orders by hour of the day.
select count(order_id) as order_count, hour(order_time) as hours from orders
group by hours
order by hours