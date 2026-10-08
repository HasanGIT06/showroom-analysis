SELECT DISTINCT customer_name FROM showroom.data10cabang;

SELECT order_id, branch, total_sales FROM showroom.data10cabang WHERE payment_type = 'Kredit';

SELECT * FROM showroom.data10cabang ORDER BY quantity DESC LIMIT 5;

SELECT DISTINCT product_name FROM showroom.data10cabang WHERE color = 'Hitam Metalik';

SELECT payment_type, COUNT(payment_type) AS total_transaction FROM showroom.data10cabang GROUP BY payment_type ORDER BY total_transaction DESC;

SELECT category, AVG(discount) AS avg_discount FROM showroom.data10cabang GROUP BY category ORDER BY avg_discount DESC;

SELECT branch, SUM(total_sales) AS total_sales FROM showroom.data10cabang GROUP BY branch HAVING total_sales > 50000000000 ORDER BY total_sales DESC;

SELECT order_id, product_name, discount FROM showroom.data10cabang WHERE discount > (SELECT AVG(Discount) as avg_discount FROM showroom.data10cabang);

SELECT category, avg(total_sales) AS avg_total_sales FROM (SELECT * FROM showroom.data10cabang WHERE status = 'completed') GROUP BY category;

WITH total_transaction_per_product_name AS (SELECT product_name, SUM(total_sales) AS total_sales FROM showroom.data10cabang GROUP BY product_name ORDER BY total_sales DESC)
SELECT * FROM total_transaction_per_product_name LIMIT 3;
