-- Using JOINS to combine table orders, order_items, and products.

-- 1. What are the sales conditions pre-and post- the pandemic? 

SELECT
    p.category,
    p.brand,
    o.created_at
FROM `bigquery-public-data.thelook_ecommerce.products` AS p
    JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS oi
    ON p.id = oi.product_id
    JOIN `bigquery-public-data.thelook_ecommerce.orders` o
    ON o.order_id = oi.order_id
    WHERE DATE(o.created_at) BETWEEN '2019-03-01' AND '2022-03-31'
    ORDER BY o.created_at

-- 2. What are the best selling brands & product categories of the three years period?

SELECT
    p.name,
    p.category
FROM `bigquery-public-data.thelook_ecommerce.products` AS p
    JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS oi
    ON p.id = oi.product_id
    JOIN `bigquery-public-data.thelook_ecommerce.orders` o
    ON o.order_id = oi.order_id
    WHERE DATE(o.created_at) BETWEEN '2019-03-01' AND '2022-03-31'
    ORDER BY o.created_at

-- 3. Who returns product more? What is the most returned product by gender?
SELECT
    p.name,
    p.category,
    o.gender,
    o.returned_at
FROM `bigquery-public-data.thelook_ecommerce.products` AS p
    JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS oi
    ON p.id = oi.product_id
    JOIN `bigquery-public-data.thelook_ecommerce.orders` o
    ON o.order_id = oi.order_id
    WHERE o.returned_at IS NOT NULL AND DATE(o.created_at) BETWEEN '2019-03-01' AND '2022-03-31'
    ORDER BY p.category