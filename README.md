Stock Analysis: Impact of Trump Tariffs (April 2, 2025)
Project Overview
This project analyzes the impact of Trump tariffs implemented on April 2, 2025, on stock market performance across various sectors: Technology, Airlines & Logistics, Automotive & Aerospace, Goods & Retail, and Industrial Manufacturing. The analysis focuses on stock trading volumes before and after the tariff implementation, using historical stock data to generate visualizations that compare average trading volumes for companies within each sector.
The analysis is performed in a Jupyter Notebook (Analysis.ipynb) using Python, with visualizations created using Plotly to display bar charts comparing pre- and post-tariff average trading volumes.
Repository Contents

Analysis.ipynb: Jupyter Notebook containing the complete code for data loading, preprocessing, and visualization of average trading volumes before and after the tariffs.
Stock Datasets/: Directory containing the datasets used for analysis (not included in the repository due to size; see Data Details for sources):
tech_stock_data.csv
airlines_logistics_stock_data.csv
auto_aero_stock_data.csv
goods_retail_stock_data.csv
industrial_manufacturing_stock_data.csv


README.md: This file, providing an overview of the project and instructions for use.

Prerequisites
To run the code in this repository, you need the following dependencies:

Python 3.11 or later
Jupyter Notebook
Required Python libraries:
pandas
numpy
seaborn
matplotlib
plotly



You can install the dependencies using pip:
pip install pandas numpy seaborn matplotlib plotly

How to Run

Clone the Repository:git clone https://github.com/your-username/stock-analysis-trump-tariffs.git
cd stock-analysis-trump-tariffs


Obtain the Datasets:
The datasets are not included in the repository due to their size. You can source them from financial data providers (e.g., Yahoo Finance, Alpha Vantage) or use your own stock data in the same format.
Place the dataset files in the Stock Datasets/ directory within the repository.


Run the Jupyter Notebook:
Launch Jupyter Notebook:jupyter notebook Analysis.ipynb


Execute the cells in Analysis.ipynb to load the data, preprocess it, and generate visualizations.


Expected Output:
The notebook produces bar charts showing the average trading volume for each company in the five sectors, comparing pre-tariff (before April 2, 2025) and post-tariff (after April 2, 2025) periods.
Visualizations include a combined chart for all sectors and individual charts for each sector.



Data Details

Source: The datasets contain historical stock data for companies in the following sectors:
Tech: 4,329 entries
Airlines & Logistics: 2,664 entries
Auto & Aerospace: 2,664 entries
Goods & Retail: 2,997 entries
Industrial Manufacturing: 1,998 entries


Columns:
ticker: Stock ticker symbol
date or Date: Date of the stock data
Open: Opening price
High: Highest price of the day
Low: Lowest price of the day
Close: Closing price
Volume: Trading volume
Company Name: Name of the company


Preprocessing:
The notebook converts date columns to datetime format and creates a Tariff_Period column to distinguish between pre-tariff and post-tariff periods based on the tariff implementation date (April 2, 2025).



Analysis and Visualizations

Objective: Compare the average trading volume of stocks before and after the tariff implementation to assess the tariffs' impact on market activity.
Visualizations:
A grouped bar chart showing average trading volumes for all sectors combined.
Individual bar charts for each sector, comparing pre- and post-tariff average volumes for each company.


Tools: The analysis uses Plotly for interactive visualizations, with distinct colors for each sector and tariff period for clarity.

Notes

The datasets are assumed to be in CSV format with consistent column names, though the notebook handles variations in the date column name (date or Date).
The tariff date (April 2, 2025) is hardcoded in the analysis for splitting data into pre- and post-tariff periods.
Ensure the dataset files are placed in the correct directory (Stock Datasets/) with the expected structure to avoid file path errors.

License
This project is licensed under the MIT License. See the LICENSE file for details.
Contact
For questions or contributions, please open an issue or contact the repository owner.
