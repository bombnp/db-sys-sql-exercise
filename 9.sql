SELECT distinct(customer_id), customer_name FROM CUSTOMER NATURAL JOIN ORDERT WHERE order_date BETWEEN "2020-01-10" AND "2020-01-15" ORDER BY customer_id;