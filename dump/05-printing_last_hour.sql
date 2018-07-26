/* Printing the list of products, created during the last hour. */
																						
SELECT title FROM products WHERE date_of_creation > SUBDATE( NOW(), INTERVAL 1 HOUR);