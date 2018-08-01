/* Printing the products that have never been ordered */

SELECT products.product_id, title 
FROM products
LEFT JOIN orderlines ON products.product_id = orderlines.product_id
WHERE orderlines.product_id IS NULL 
GROUP BY products.product_id, title;