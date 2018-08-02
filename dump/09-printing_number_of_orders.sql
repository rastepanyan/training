/* 	Printing the list of users with number of orders they have placed.*/

SELECT u.user_id, first_name, last_name, 
COUNT(*) AS number_of_orders 
FROM users u INNER JOIN orders o USING(user_id)
GROUP BY u.user_id 
ORDER BY u.user_id;