SELECT customer_id, customer_name FROM CUSTOMER c WHERE NOT EXISTS (
	SELECT order_id FROM ORDERT o WHERE o.customer_id = c.customer_id
) ORDER BY customer_id DESC;