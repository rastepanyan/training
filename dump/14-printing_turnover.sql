/* Printing the turnover of the shop per month, for the last 10 months */

SELECT YEAR(order_date) AS years, MONTH(order_date) AS months, SUM(amount) AS monthly_amount
FROM orders 
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 10 MONTH)
GROUP BY years, months
ORDER BY years DESC, months DESC;