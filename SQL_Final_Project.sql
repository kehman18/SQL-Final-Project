CREATE DATABASE DB_PBI;

SELECT * FROM dim_products;
SELECT * FROM fact_sales;

ALTER TABLE fact_sales
ADD COLUMN revenue NUMERIC GENERATED ALWAYS AS (quantity * unit_price_ngn) STORED;

SELECT *
FROM fact_sales AS FS
JOIN dim_products AS DP
ON FS.product_id = DP.product_id;
