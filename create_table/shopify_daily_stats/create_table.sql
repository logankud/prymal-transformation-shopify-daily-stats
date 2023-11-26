CREATE EXTERNAL TABLE IF NOT EXISTS shopify_daily_stats(
order_date DATE
, total_product_revenue FLOAT
, total_order_count INT
, total_customer_count INT
, daily_aov FLOAT
, new_customer_count INT
, new_customer_spend FLOAT
, repeat_customer_count INT
, repeat_customer_spend FLOAT



)
PARTITIONED BY 
(
partition_date DATE 
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ',' 
LOCATION 's3://prymal-analytics/shopify/daily_stats/' 
TBLPROPERTIES ("skip.header.line.count"="1")