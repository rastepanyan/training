/* Printing the list of countries that have more than 3 users, sorted by this number in descending order. */
																						
SELECT country_code, 
COUNT(*) AS total_users 
FROM users 
GROUP BY country_code 
HAVING total_users >= 3 
ORDER BY total_users DESC;