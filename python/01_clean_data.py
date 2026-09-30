import pandas as pd
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/raw/sales_data_raw.csv',parse_dates=['Order_Date'])
df=df.drop_duplicates('Order_ID')
df['Year']=df.Order_Date.dt.year
df['Quarter']='Q'+df.Order_Date.dt.quarter.astype(str)
df['Month_Number']=df.Order_Date.dt.month
df['Month']=df.Order_Date.dt.strftime('%b')
df['Month_Year']=df.Order_Date.dt.strftime('%Y-%m')
df['Profit_Margin']=df.Profit/df.Revenue
df['Discount_Band']=pd.cut(df.Discount,[-.001,.05,.10,.20,.30],labels=['0–5%','5–10%','10–20%','20–30%'])
df['Year_Month_Sort']=df.Year*100+df.Month_Number
df.to_csv(ROOT/'data/processed/sales_cleaned.csv',index=False)
print(f'Cleaned rows: {len(df):,}')