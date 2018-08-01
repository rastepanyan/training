/* Printing the list of countries with the number of orders per country, sorted by this number in descending order. */
																						
SELECT country_code, 
COUNT(*) AS orders_per_country 
FROM users INNER JOIN orders ON users.user_id = orders.user_id 
GROUP BY country_code 
ORDER BY orders_per_country DESC;