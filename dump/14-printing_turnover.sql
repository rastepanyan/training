/* Printing the turnover of the shop per month, for the last 10 months */

SELECT YEAR(order_date) AS years, MONTH(order_date) AS months, SUM(item_price * quantity) AS monthly_amount
FROM orderlines 
INNER JOIN orders USING(order_id)
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 10 MONTH)
GROUP BY years, months
ORDER BY years, months DESC;