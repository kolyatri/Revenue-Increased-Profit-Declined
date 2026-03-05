-- 02_profit_decomposition.sql
-- Analyze economic structure by month

SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(revenue) AS revenue,
    SUM(cost) AS cost,
    SUM(discount_amount) AS discount,
    SUM(revenue - cost - discount_amount) AS profit,
    
    ROUND(SUM(cost) / SUM(revenue), 4) AS cost_ratio,
    ROUND(SUM(discount_amount) / SUM(revenue), 4) AS discount_ratio,
    ROUND(SUM(revenue - cost - discount_amount) / SUM(revenue), 4) AS margin_ratio
FROM orders
GROUP BY 1
ORDER BY 1;