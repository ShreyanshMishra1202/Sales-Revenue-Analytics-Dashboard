import pandas as pd
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/processed/sales_cleaned.csv')
rev=df.Revenue.sum(); profit=df.Profit.sum(); orders=df.Order_ID.nunique()
(ROOT/'outputs/reports/business_summary.md').write_text(f'''# Business Summary
- Total Revenue: ₹{rev:,.0f}
- Total Profit: ₹{profit:,.0f}
- Profit Margin: {profit/rev:.1%}
- Orders: {orders:,}
- AOV: ₹{rev/orders:,.0f}

This portfolio project uses synthetic data for demonstration.
''',encoding='utf8')