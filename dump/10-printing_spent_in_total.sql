/* Printing the list of users with a column of how much money they have spent in this shop. */

SELECT users.user_id, SUM(orders.amount) AS total 
FROM orders INNER JOIN users ON orders.order_id = users.user_id 
GROUP BY user_id 
ORDER BY total;