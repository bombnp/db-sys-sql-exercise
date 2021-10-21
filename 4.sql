SELECT product_id, product_description FROM PRODUCT NATURAL JOIN (
	SELECT product_id, count(*) as order_count FROM ORDER_LINE GROUP BY product_id
) t1 ORDER BY order_count DESC LIMIT 1;