
-- 1. View the menu_items table.

select * from menu_items;

-- 2. Find the number of items on the menu.

select count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * 
FROM menu_items 
WHERE price IN (
    (SELECT MAX(price) FROM menu_items),
    (SELECT MIN(price) FROM menu_items)
);

-- 4. How many Italian dishes are on the menu?

select item_name from menu_items where category = 'Italian';

select count(*) from menu_items where category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?

select * from menu_items where category = 'Italian' order by price;

-- 6. How many dishes are in each category?

SELECT category, count(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;


-- 7. What is the average dish price within each category?

SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category
ORDER BY avg_price;

