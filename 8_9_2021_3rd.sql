# Total revenue generated in year 2020
SELECT SUM(t.sales_amount)
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE d.year = 2020;


# How much business I did in Chennai which has market_code = Mark001 ?
SELECT SUM(t.sales_amount)
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE d.year = 2020 AND t.market_code = 'Mark001';


# Select All products sold in Chennai ?
SELECT distinct product_code
FROM transactions t
WHERE t.market_code = 'Mark001'
ORDER BY t.product_code;


# Total revenue in year 2020, January Month  -> SUM(t.sales_amount) = '25659711'
SELECT SUM(t.sales_amount)
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE d.year = 2020 AND d.month_name = 'January';


# Show total revenue in year 2020 in Chennai which has market_code = 'Mark001' ? --> SUM(t.sales_amount) = '2463024'
SELECT SUM(t.sales_amount)
FROM transactions t
INNER JOIN date d
ON t.order_date = d.date
WHERE d.year = 2020 AND t.market_code = 'Mark001';
