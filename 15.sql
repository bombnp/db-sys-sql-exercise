SELECT customer_id, customer_name FROM CUSTOMER NATURAL JOIN ORDERT o JOIN (
	SELECT order_id, sum(ordered_quantity * standard_price) as total_payment FROM ORDERT NATURAL JOIN ORDER_LINE NATURAL JOIN PRODUCT GROUP BY order_id ORDER BY total_payment DESC LIMIT 1
) t1 ON o.order_id = t1.order_id;