/* 	Printing the list of users with number of orders they have placed.*/

SELECT users.user_id, first_name, last_name, 
COUNT(*) AS number_of_orders 
FROM users INNER JOIN orders USING(user_id)
GROUP BY user_id 
ORDER BY users.user_id;