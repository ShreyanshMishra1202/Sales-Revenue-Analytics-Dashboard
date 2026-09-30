# Sales & Revenue Analytics Dashboard

End-to-end retail analytics portfolio project using **Python, SQL, Power BI and Excel**.

> The dataset is synthetic and generated specifically for portfolio/demo purposes.

## Workflow
Raw CSV → Python cleaning → feature engineering → EDA → SQL analysis → Power BI star schema → DAX KPIs → dashboard → business insights.

## Dataset
- 6,000 cleaned transactions
- 2023–2025
- 4 regions
- 20 products
- 500 customers
- 4 categories
- 3 customer segments
- 3 sales channels

## KPIs
Revenue, Profit, Profit Margin, Orders, Units Sold, AOV, YoY Growth, Average Discount, Unique Customers.

## Structure
data/raw — raw data
data/processed — cleaned dataset
data/powerbi — fact/dimension files
python — cleaning, EDA, reporting scripts
sql — schema and business queries
powerbi — DAX and dashboard guide
outputs — charts and business summary

## Run
```bash
pip install -r requirements.txt
python python/01_clean_data.py
python python/02_eda.py
python python/03_business_summary.py
```

For Power BI, follow `powerbi/DASHBOARD_BUILD_GUIDE.md`.

## Resume-safe description
Built an end-to-end Sales & Revenue Analytics project using SQL, Python/Pandas and Power BI; cleaned and transformed transaction data, analyzed revenue/profit trends, built KPI measures and designed an interactive dashboard for category, regional, product and customer performance.

## Author
Shreyansh Mishra
