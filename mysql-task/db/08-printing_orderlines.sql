/* 	Printing the list orderlines with combined order information and user information.*/

SELECT order_id, price_each, product_id, quantity, order_date, user_id, amount, first_name, last_name, address, country_code FROM orderlines INNER JOIN orders using (order_id) INNER JOIN users using (user_id) ORDER BY order_id;