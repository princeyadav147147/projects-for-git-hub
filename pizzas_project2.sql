use  projects;
select * from projects.orders;

-- 1. retrieve the total number of orders placed
 select count(*)as Total_orders from orders;
 
 -- calculate the total revenue genrated from sales
 select round(sum(order_details.quantity * pizzas.price), 2) as total_revenue 
 from order_details
 join pizzas on order_details.pizza_id=pizzas.pizza_id;
 
 -- identify the highest_priced pizza
 select pt.name,p.price
 from pizzas p
 join pizza_types pt on p.pizza_type = pt.pizza_type
 order by p.price DESC limit 1;
 select* from  pizza_types left join pizzas
 on pizza_types.pizza_type=pizzas.pizza_type;
 
 -- identify the most common pizza size ordered
 select p.size, sum(od.quantity) as total_orders
 from order_details od
 join pizzas p on od.pizza_id=p.pizza_id
 group by p.size
 order by total_orders DESC LIMIT 1;
 
 -- List the top 5 most ordered pizza types along with their quantities.  
 SELECT pt.name, sum(od.quantity) as total_quantity
 from order_details od
 join pizzas p on od.pizza_id=p.pizza_id
 join pizza_types pt on p.pizza_type=pt.pizza_type
 group by pt.name
 order by total_quantity DESC LIMIT 5;
 
 --  Join the necessary tables to find the total quantity of each pizza category ordered
 select pt. category, sum(od.quantity) as total_quantity
 from order_details od
 join pizzas p on od.pizza_id=p.pizza_id
 join pizza_types pt on p.pizza_type=pt.pizza_type
 group by pt.category
 order by total_quantity DESC LIMIT 4;
 -- Determine the distribution of orders by hour of the day
 select hour(time) as time1 , count(*)  as no from orders group by time1;
 -- Join relevant tables to find the category-wise distribution of pizzas
 SELECT pt.category,
       SUM(od.quantity) AS total_quantity,
       ROUND(SUM(od.quantity) * 100.0 / (SELECT SUM(quantity) FROM order_details), 2) AS percentage
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type = pt.pizza_type
GROUP BY pt.category;
 --  Group the orders by date and calculate the average number of pizzas ordered per day
 SELECT round(AVG(pizzas_per_day),0)as avg_pizzas_per_day
 from(
 select o.date, sum(od.quantity) as pizzas_per_day
 from orders o
 join order_details od on o.order_id=od.order_id
 group by o.date
 )as daily_totals;
 
 -- Determine the top 3 most ordered pizza types based on revenue. 
 SELECT pt.name, round(sum(od.quantity*p.price),2)as revenue
 from order_details od
 join pizzas p on od.pizza_id=p.pizza_id
 join pizza_types pt on p.pizza_type=pt.pizza_type
 group by pt.name
 order by revenue DESC LIMIT 3;
 
 
 
 
 
 
 