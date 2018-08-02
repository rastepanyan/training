/* Printing the products that have never been ordered */

SELECT p.product_id, title 
FROM products p
LEFT JOIN orderlines o ON p.product_id = o.product_id
WHERE o.product_id IS NULL 
GROUP BY p.product_id, title;