--- Volume Changes Before and After Tariffs ---
SELECT 
    ticker,
    AVG(CASE WHEN date < '2025-04-02' THEN Volume END) AS avg_volume_pre,
    AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) AS avg_volume_post,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) AS volume_change,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) / 
     NULLIF(AVG(CASE WHEN date < '2025-04-02' THEN Volume END), 0) * 100 AS percentage_volume_change
FROM tech_stock_data
GROUP BY ticker;

SELECT ticker,
    Avg(CASE WHEN date < '2025-04-02' THEN Volume END) AS avg_volume_pre,
    AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) AS avg_volume_post,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) AS volume_change,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) -
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) / 
     NULLIF(AVG(CASE WHEN date < '2025-04-02' THEN Volume END), 0) * 100 AS percentage_volume_change
FROM airlines_logistics_stock_data
GROUP BY ticker;

SELECT ticker,
    avg(CASE WHEN date < '2025-04-02' THEN Volume END) AS avg_volume_pre,
    AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) AS avg_volume_post,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) AS volume_change,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) -
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) / 
     NULLIF(AVG(CASE WHEN date < '2025-04-02' THEN Volume END), 0) * 100 AS percentage_volume_change
FROM auto_aero_stock_data
GROUP BY ticker;

select ticker,
    avg(CASE WHEN date < '2025-04-02' THEN Volume END) AS avg_volume_pre,
    AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) AS avg_volume_post,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) AS volume_change,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) -
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) / 
     NULLIF(AVG(CASE WHEN date < '2025-04-02' THEN Volume END), 0) * 100 AS percentage_volume_change
FROM industrial_manufacturing_stock_data
GROUP BY ticker;

SELECT ticker,
    avg(CASE WHEN date < '2025-04-02' THEN Volume END) AS avg_volume_pre,
    AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) AS avg_volume_post,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) - 
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) AS volume_change,
    (AVG(CASE WHEN date >= '2025-04-02' THEN Volume END) -
     AVG(CASE WHEN date < '2025-04-02' THEN Volume END)) / 
     NULLIF(AVG(CASE WHEN date < '2025-04-02' THEN Volume END), 0) * 100 AS percentage_volume_change
FROM goods_retail_stock_data
GROUP BY ticker;


--- Highest Volume Days ---
SELECT 
    ticker,
    date,
    Close,
    Volume,
    RANK() OVER (PARTITION BY ticker ORDER BY Volume DESC) AS volume_rank
FROM tech_stock_data
ORDER BY ticker, volume_rank
LIMIT 10;

SELECT 
    ticker,
    date,
    Close,
    Volume,
    RANK() OVER (PARTITION BY ticker ORDER BY Volume DESC) AS volume_rank
FROM airlines_logistics_stock_data
ORDER BY ticker, volume_rank
LIMIT 10;

SELECT 
    ticker,
    date,
    Close,
    Volume,
    RANK() OVER (PARTITION BY ticker ORDER BY Volume DESC) AS volume_rank
FROM auto_aero_stock_data
ORDER BY ticker, volume_rank
LIMIT 10;

SELECT 
    ticker,
    date,
    Close,
    Volume,
    RANK() OVER (PARTITION BY ticker ORDER BY Volume DESC) AS volume_rank
FROM industrial_manufacturing_stock_data
ORDER BY ticker, volume_rank
LIMIT 10;

SELECT 
    ticker,
    date,
    Close,
    Volume,
    RANK() OVER (PARTITION BY ticker ORDER BY Volume DESC) AS volume_rank
FROM goods_retail_stock_data
ORDER BY ticker, volume_rank
LIMIT 10;