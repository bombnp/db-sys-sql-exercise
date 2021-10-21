SELECT customer_id, customer_name FROM CUSTOMER NATURAL JOIN (
	SELECT customer_id, count(*) as order_count FROM ORDERT GROUP BY customer_id ORDER BY order_count DESC LIMIT 1
) t1;