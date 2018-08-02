/* 	Printing the list orderlines with combined order information and user information.*/

SELECT order_id, item_price, product_id, quantity, position, order_date, user_id, amount, first_name, last_name, address, post_code, city, country_code 
FROM orderlines 
INNER JOIN orders USING(order_id) 
INNER JOIN users USING(user_id) 
ORDER BY order_id, position;