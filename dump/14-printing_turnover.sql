/* Printing the turnover of the shop per month, for the last 10 months */

SELECT MONTH(order_date) AS month, SUM(item_price * quantity) AS monthly_amount
FROM orderlines 
INNER JOIN orders using (order_id)
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 10 MONTH)
GROUP BY month
ORDER BY monthly_amount;