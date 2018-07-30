/* Printing the top 3 buyers (id, names, country) in the shop based on turnover */

SELECT users.user_id, CONCAT(first_name, " ", last_name) AS names, country_code, SUM(item_price * quantity) AS turnover
FROM users INNER JOIN orders USING (user_id) INNER JOIN orderlines USING (order_id)
GROUP BY users.user_id
ORDER BY turnover 
DESC 
LIMIT 3;