/* Printing a simple list of orders.*/

SELECT user_id, first_name, last_name, amount, order_date 
FROM users 
INNER JOIN orders USING (user_id);