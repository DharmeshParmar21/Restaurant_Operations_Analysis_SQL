-- 1) View the order_details table

select * from order_details;

-- 2) what is the date range of the table ?

select min(order_date),  max(order_date) from order_details;

-- 3) How many orders were made within this data range ?

select count(distinct order_id) from order_details; 

-- 4) How many items were ordered within this date range ?

select count(*) from order_details;

-- 5) which orders had the most number of items ?

SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
order by num_items desc;

 -- 6) How many order had more than 12 times ?
 select  count(*) from 
 
 (SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
having num_items > 12)
AS num_orders;
 


