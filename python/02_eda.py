import pandas as pd, matplotlib.pyplot as plt
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]; OUT=ROOT/'outputs/charts'; OUT.mkdir(exist_ok=True)
df=pd.read_csv(ROOT/'data/processed/sales_cleaned.csv',parse_dates=['Order_Date'])
m=df.groupby('Month_Year').Revenue.sum()
plt.figure(figsize=(11,4)); plt.plot(m.index,m.values,marker='o'); plt.xticks(rotation=45); plt.title('Monthly Revenue Trend'); plt.tight_layout(); plt.savefig(OUT/'monthly_revenue.png',dpi=150); plt.close()
c=df.groupby('Category')[['Revenue','Profit']].sum(); c.plot(kind='bar',figsize=(9,4)); plt.title('Revenue & Profit by Category'); plt.tight_layout(); plt.savefig(OUT/'category_performance.png',dpi=150); plt.close()
r=df.groupby('Region').Revenue.sum().sort_values(ascending=False); r.plot(kind='bar',figsize=(7,4)); plt.title('Revenue by Region'); plt.tight_layout(); plt.savefig(OUT/'regional_revenue.png',dpi=150); plt.close()
plt.figure(figsize=(8,4)); plt.scatter(df.Discount*100,df.Profit_Margin*100,alpha=.2,s=10); plt.xlabel('Discount %'); plt.ylabel('Profit Margin %'); plt.title('Discount vs Profit Margin'); plt.tight_layout(); plt.savefig(OUT/'discount_margin.png',dpi=150); plt.close()
print('EDA charts generated.')