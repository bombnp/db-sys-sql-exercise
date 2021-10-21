SELECT product_id, product_description FROM PRODUCT NATURAL JOIN (
	SELECT product_id, sum(ordered_quantity) as quantity FROM ORDER_LINE GROUP BY product_id ORDER BY quantity DESC LIMIT 1
) t1;