--- Volatility Comparison (Standard Deviation) ---
SELECT 
    ticker,
    STDDEV(CASE WHEN date < '2025-04-02' THEN Close END) AS volatility_pre_tariff,
    STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) AS volatility_post_tariff,
    (STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     STDDEV(CASE WHEN date < '2025-04-02' THEN Close END)) AS volatility_change
FROM tech_stock_data
GROUP BY ticker;

SELECT ticker,
    STDDEV(CASE WHEN date < '2025-04-02' THEN Close END) AS volatility_pre_tariff,
    STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) AS volatility_post_tariff,
    (STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     STDDEV(CASE WHEN date < '2025-04-02' THEN Close END)) AS volatility_change
FROM industrial_manufacturing_stock_data
GROUP BY ticker;

SELECT ticker,
    STDDEV(CASE WHEN date < '2025-04-02' THEN Close END) AS volatility_pre_tariff,
    STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) AS volatility_post_tariff,
    (STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     STDDEV(CASE WHEN date < '2025-04-02' THEN Close END)) AS volatility_change
FROM goods_retail_stock_data
GROUP BY ticker;

SELECT ticker,
    STDDEV(CASE WHEN date < '2025-04-02' THEN Close END) AS volatility_pre_tariff,
    STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) AS volatility_post_tariff,
    (STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     STDDEV(CASE WHEN date < '2025-04-02' THEN Close END)) AS volatility_change
FROM auto_aero_stock_data
GROUP BY ticker;

SELECT ticker,
    STDDEV(CASE WHEN date < '2025-04-02' THEN Close END) AS volatility_pre_tariff,
    STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) AS volatility_post_tariff,
    (STDDEV(CASE WHEN date >= '2025-04-02' THEN Close END) - 
     STDDEV(CASE WHEN date < '2025-04-02' THEN Close END)) AS volatility_change
FROM airlines_logistics_stock_data
GROUP BY ticker;