/* Printing the list of countries with the number of orders per country, sorted by this number in descending order. */
																						
SELECT country_code, 
COUNT(*) AS orders_per_country 
FROM users u INNER JOIN orders o ON u.user_id = o.user_id 
GROUP BY country_code 
ORDER BY orders_per_country DESC, country_code ASC;