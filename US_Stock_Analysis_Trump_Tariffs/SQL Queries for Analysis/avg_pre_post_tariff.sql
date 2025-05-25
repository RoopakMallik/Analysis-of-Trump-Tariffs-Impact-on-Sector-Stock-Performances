--- Average Prices Before and After Tariffs ---
SELECT 
    ticker,
    AVG(CASE WHEN date < '2025-04-02' THEN Close END) AS avg_pre_tariff,
    AVG(CASE WHEN date >= '2025-04-02' THEN Close END) AS avg_post_tariff,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Close END)) AS absolute_change,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Close END)) / 
     AVG(CASE WHEN date < '2025-04-02' THEN Close END) * 100 AS percentage_change
FROM tech_stock_data
GROUP BY ticker;

SELECT ticker, 
       AVG(CASE WHEN date < '2025-04-02' THEN Close END) AS avg_pre_tariff,
       AVG(CASE WHEN date >= '2025-04-02' THEN Close END) AS avg_post_tariff,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) AS absolute_change,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) / 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END) * 100 AS percentage_change
FROM industrial_manufacturing_stock_data
GROUP BY ticker;

SELECT ticker, 
       AVG(CASE WHEN date < '2025-04-02' THEN Close END) AS avg_pre_tariff,
       AVG(CASE WHEN date >= '2025-04-02' THEN Close END) AS avg_post_tariff,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) AS absolute_change,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) / 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END) * 100 AS percentage_change
FROM goods_retail_stock_data
GROUP BY ticker;

SELECT ticker, 
       AVG(CASE WHEN date < '2025-04-02' THEN Close END) AS avg_pre_tariff,
       AVG(CASE WHEN date >= '2025-04-02' THEN Close END) AS avg_post_tariff,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) AS absolute_change,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) / 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END) * 100 AS percentage_change
FROM auto_aero_stock_data
GROUP BY ticker;

SELECT ticker, 
       AVG(CASE WHEN date < '2025-04-02' THEN Close END) AS avg_pre_tariff,
       AVG(CASE WHEN date >= '2025-04-02' THEN Close END) AS avg_post_tariff,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) AS absolute_change,
       (AVG(CASE WHEN date >= '2025-04-02' THEN Close END) - 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END)) / 
        AVG(CASE WHEN date < '2025-04-02' THEN Close END) * 100 AS percentage_change
FROM airlines_logistics_stock_data
GROUP BY ticker;

