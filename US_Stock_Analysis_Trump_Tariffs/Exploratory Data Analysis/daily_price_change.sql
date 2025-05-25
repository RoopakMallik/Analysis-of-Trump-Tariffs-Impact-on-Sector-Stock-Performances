--- Daily Price Changes ---
SELECT ticker, 
       date, 
       Close, 
       LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close,
       Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS price_change,
       (Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date)) / 
           LAG(Close) OVER (PARTITION BY ticker ORDER BY date) * 100 AS percentage_change
FROM tech_stock_data
ORDER BY ticker, date;

SELECT 
    ticker,
    date,
    Close,
    LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close,
    Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS price_change,
    (Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date)) / 
        LAG(Close) OVER (PARTITION BY ticker ORDER BY date) * 100 AS percentage_change
FROM auto_aero_stock_data
ORDER BY ticker, date;

SELECT ticker, 
       date, 
       Close, 
       LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close,
       Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS price_change,
       (Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date)) / 
           LAG(Close) OVER (PARTITION BY ticker ORDER BY date) * 100 AS percentage_change
FROM airlines_logistics_stock_data
ORDER BY ticker, date;

SELECT ticker, 
       date, 
       Close, 
       LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close,
       Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS price_change,
       (Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date)) / 
           LAG(Close) OVER (PARTITION BY ticker ORDER BY date) * 100 AS percentage_change
FROM goods_retail_stock_data
ORDER BY ticker, date;

SELECT ticker, 
       date, 
       Close, 
       LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close,
       Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date) AS price_change,
       (Close - LAG(Close) OVER (PARTITION BY ticker ORDER BY date)) / 
           LAG(Close) OVER (PARTITION BY ticker ORDER BY date) * 100 AS percentage_change
FROM industrial_manufacturing_stock_data
ORDER BY ticker, date;