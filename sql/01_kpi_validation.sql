-- 01_kpi_validation.sql
-- Validate Revenue and Profit changes (Feb vs March)

WITH monthly AS (
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        COUNT(order_id) AS orders,
        SUM(revenue) AS total_revenue,
        SUM(cost) AS total_cost,
        SUM(discount_amount) AS total_discount,
        SUM(revenue - cost - discount_amount) AS total_profit,
        AVG(revenue) AS aov,
        SUM(revenue - cost - discount_amount) / SUM(revenue) AS margin_ratio
    FROM orders
    GROUP BY 1
)

SELECT
    month,
    orders,
    total_revenue,
    total_profit,
    aov,
    margin_ratio,
    ROUND(
        (total_revenue - LAG(total_revenue) OVER (ORDER BY month))
        / LAG(total_revenue) OVER (ORDER BY month) * 100, 2
    ) AS revenue_change_pct,
    ROUND(
        (total_profit - LAG(total_profit) OVER (ORDER BY month))
        / LAG(total_profit) OVER (ORDER BY month) * 100, 2
    ) AS profit_change_pct
FROM monthly
ORDER BY month;