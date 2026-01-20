-- Category-level sales and profit analysis
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit;


-- Sub-category level profit analysis for Furniture
SELECT
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
WHERE category = 'Furniture'
GROUP BY sub_category
ORDER BY total_profit;
