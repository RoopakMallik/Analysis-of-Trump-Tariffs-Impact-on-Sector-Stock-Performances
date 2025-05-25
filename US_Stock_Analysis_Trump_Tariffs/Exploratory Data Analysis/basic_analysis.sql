SELECT*from tech_stock_data;
SELECT*from airlines_logistics_stock_data;
SELECT*from goods_retail_stock_data;
SELECT*from auto_aero_stock_data;
SELECT*from industrial_manufacturing_stock_data;

SELECT count(tech_stock_data) from tech_stock_data;
SELECT count(airlines_logistics_stock_data) from airlines_logistics_stock_data;
SELECT count(goods_retail_stock_data) from goods_retail_stock_data;
SELECT count(auto_aero_stock_data) from auto_aero_stock_data;
SELECT count(industrial_manufacturing_stock_data) from industrial_manufacturing_stock_data;

SELECT max(high) as max_high_tech_companies from tech_stock_data;
SELECT min(low) as max_low_tech_companies from tech_stock_data;
SELECT max(close) as max_close_tech_companies from tech_stock_data;
select min(close) as min_close_tech_companies from tech_stock_data;

SELECT max(high) as max_high_airlines_logistics_companies from airlines_logistics_stock_data;
SELECT min(low) as max_low_airlines_logistics_companies from airlines_logistics_stock_data;
SELECT max(close) as max_close_airlines_logistics_companies from airlines_logistics_stock_data;
SELECT min(close) as min_close_airlines_logistics_companies from airlines_logistics_stock_data;

SELECT max(high) as max_high_goods_retail_companies from goods_retail_stock_data;
SELECT min(low) as max_low_goods_retail_companies from goods_retail_stock_data;
SELECT max(close) as max_close_goods_retail_companies from goods_retail_stock_data;
SELECT min(close) as min_close_goods_retail_companies from goods_retail_stock_data;

SELECT max(high) as max_high_auto_aero_companies from auto_aero_stock_data;
SELECT min(low) as max_low_auto_aero_companies from auto_aero_stock_data;
SELECT max(close) as max_close_auto_aero_companies from auto_aero_stock_data;
SELECT min(close) as min_close_auto_aero_companies from auto_aero_stock_data;

SELECT max(high) as max_high_industrial_manufacturing_companies from industrial_manufacturing_stock_data;
SELECT min(low) as max_low_industrial_manufacturing_companies from industrial_manufacturing_stock_data;
SELECT max(close) as max_close_industrial_manufacturing_companies from industrial_manufacturing_stock_data;
SELECT min(close) as min_close_industrial_manufacturing_companies from industrial_manufacturing_stock_data;

SELECT avg(high) as average_high_tech_companies from tech_stock_data;
SELECT avg(low) as average_low_tech_companies from tech_stock_data;
SELECT avg(close) as average_close_tech_companies from tech_stock_data;

SELECT avg(high) as average_high_airlines_logistics_companies from airlines_logistics_stock_data;
SELECT avg(low) as average_low_airlines_logistics_companies from airlines_logistics_stock_data;
SELECT avg(close) as average_close_airlines_logistics_companies from airlines_logistics_stock_data;

SELECT avg(high) as average_high_goods_retail_companies from goods_retail_stock_data;
SELECT avg(low) as average_low_goods_retail_companies from goods_retail_stock_data;
SELECT avg(close) as average_close_goods_retail_companies from goods_retail_stock_data;

SELECT avg(high) as average_high_auto_aero_companies from auto_aero_stock_data;
SELECT avg(low) as average_low_auto_aero_companies from auto_aero_stock_data;
SELECT avg(close) as average_close_auto_aero_companies from auto_aero_stock_data;

SELECT avg(high) as average_high_industrial_manufacturing_companies from industrial_manufacturing_stock_data;
SELECT avg(low) as average_low_industrial_manufacturing_companies from industrial_manufacturing_stock_data;
SELECT avg(close) as average_close_industrial_manufacturing_companies from industrial_manufacturing_stock_data;

