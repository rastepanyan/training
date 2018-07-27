/* Printing the list of countries with the number of orders per country, sorted by this number in descending order. */
																						
SELECT country_code, COUNT(*) AS nopc FROM users INNER JOIN orders WHERE users.user_id = orders.user_id GROUP BY country_code ORDER BY nopc DESC;