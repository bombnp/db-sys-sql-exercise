SELECT customer_id, customer_name, order_count FROM CUSTOMER NATURAL JOIN (
	SELECT customer_id, count(*) as order_count FROM ORDERT GROUP BY customer_id 
) t1 ORDER BY order_count DESC LIMIT 3;