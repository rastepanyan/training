/* Printing the products that have never been ordered */

SELECT title, 
COUNT(*) AS not_ordered 
FROM products 
WHERE products.product_id 
NOT IN (SELECT orderlines.product_id FROM orderlines WHERE orderlines.quantity >= 1) 
GROUP BY title;