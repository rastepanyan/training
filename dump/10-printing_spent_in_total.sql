/* Printing the list of users with a column of how much money they have spent in this shop. */

SELECT SUM(orders.amount) total, users.user_id 
FROM orders, users 
WHERE orders.order_id = users.user_id 
GROUP BY user_id 
ORDER BY total;