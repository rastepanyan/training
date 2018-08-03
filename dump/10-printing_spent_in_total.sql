/* Printing the list of users with a column of how much money they have spent in this shop. */

SELECT u.user_id, SUM(o.amount) AS total 
FROM orders o INNER JOIN users u ON o.order_id = u.user_id 
GROUP BY u.user_id 
ORDER BY total;