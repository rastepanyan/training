/* Printing the 10 most ordered products of all times. */

SELECT product_id, SUM(quantity) AS most_ordered 
FROM orderlines 
GROUP BY product_id 
ORDER BY most_ordered DESC 
LIMIT 10;