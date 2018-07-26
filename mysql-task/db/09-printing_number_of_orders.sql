/* 	Printing the list of users with number of orders they have placed.*/

SELECT first_name, last_name, users.user_id, COUNT(*) AS number_of_orders FROM users, orders WHERE users.user_id = orders.user_id GROUP BY first_name, last_name, user_id ORDER BY users.user_id;