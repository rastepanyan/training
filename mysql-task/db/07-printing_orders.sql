/* Printing a simple list of orders.*/

SELECT order_id, user_id, order_date, product_id, price_each, amount FROM orderlines INNER JOIN orders using (order_id);