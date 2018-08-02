/* Printing the top 3 buyers (id, names, country) in the shop based on turnover */

SELECT u.user_id, CONCAT(first_name, " ", last_name) AS names, country_code, SUM(amount) AS turnover
FROM users u INNER JOIN orders o USING(user_id)
GROUP BY u.user_id
ORDER BY turnover DESC 
LIMIT 3;