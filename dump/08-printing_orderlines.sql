/* 	Printing the list orderlines with combined order information and user information.*/

CREATE TEMPORARY TABLE orderlines_tmp SELECT * FROM orderlines;
ALTER TABLE orderlines_tmp DROP orderlines_id;
SELECT *
FROM orderlines_tmp 
INNER JOIN orders USING(order_id) 
INNER JOIN users USING(user_id) 
ORDER BY order_id, position;