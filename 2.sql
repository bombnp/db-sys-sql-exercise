SELECT postal_code, count(*) as user_count FROM CUSTOMER GROUP BY postal_code HAVING user_count > 1 ORDER BY postal_code DESC;