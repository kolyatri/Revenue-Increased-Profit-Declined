-- 06_impact_quantification.sql
-- Estimate expected March profit if February economics remained

WITH feb_ratios AS (
    SELECT
        SUM(cost) / SUM(revenue) AS feb_cost_ratio,
        SUM(discount_amount) / SUM(revenue) AS feb_discount_ratio
    FROM orders
    WHERE DATE_TRUNC('month', order_date) = '2025-02-01'
),
march_data AS (
    SELECT
        SUM(revenue) AS march_revenue,
        SUM(cost) AS march_cost,
        SUM(discount_amount) AS march_discount,
        SUM(revenue - cost - discount_amount) AS actual_march_profit
    FROM orders
    WHERE DATE_TRUNC('month', order_date) = '2025-03-01'
)

SELECT
    m.march_revenue,
    m.actual_march_profit,
    
    m.march_revenue * f.feb_cost_ratio AS expected_cost,
    m.march_revenue * f.feb_discount_ratio AS expected_discount,
    
    m.march_revenue 
      - (m.march_revenue * f.feb_cost_ratio)
      - (m.march_revenue * f.feb_discount_ratio)
      AS expected_profit_if_feb_structure,
    
    (m.march_revenue 
      - (m.march_revenue * f.feb_cost_ratio)
      - (m.march_revenue * f.feb_discount_ratio))
      - m.actual_march_profit
      AS total_profit_loss_vs_expected

FROM feb_ratios f
CROSS JOIN march_data m;