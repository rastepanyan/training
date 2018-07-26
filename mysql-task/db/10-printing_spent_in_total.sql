/* Printing the list of users with a column of how much money they have spent in this shop. */

SELECT SUM(orders.amount) total, users.first_name, users.last_name FROM orders, users WHERE orders.order_id = users.user_id GROUP BY first_name, last_name ORDER BY total;