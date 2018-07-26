/* Printing the list of countries that have more than 3 users, sorted by this number in descending order. */
																						
SELECT country_code, COUNT(*) AS mttu FROM users GROUP BY country_code HAVING mttu >= 3 ORDER BY mttu DESC;