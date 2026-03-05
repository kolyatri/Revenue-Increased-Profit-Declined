-- 05_segment_device.sql
-- Margin by device

SELECT
    DATE_TRUNC('month', o.order_date) AS month,
    s.device_type,
    COUNT(o.order_id) AS orders,
    SUM(o.revenue) AS revenue,
    SUM(o.cost) AS cost,
    SUM(o.discount_amount) AS discount,
    SUM(o.revenue - o.cost - o.discount_amount) AS profit,
    ROUND(SUM(o.revenue - o.cost - o.discount_amount)
          / SUM(o.revenue), 4) AS margin_ratio
FROM orders o
JOIN sessions s ON o.user_id = s.user_id
GROUP BY 1, 2
ORDER BY 1, 2;

-- Revenue Share by Device

WITH device_revenue AS (
    SELECT
        DATE_TRUNC('month', o.order_date) AS month,
        s.device_type,
        SUM(o.revenue) AS revenue
    FROM orders o
    JOIN sessions s ON o.user_id = s.user_id
    GROUP BY 1, 2
)
SELECT
    month,
    device_type,
    revenue,
    ROUND(
        revenue / SUM(revenue) OVER (PARTITION BY month), 4
    ) AS revenue_share
FROM device_revenue
ORDER BY month, device_type;
