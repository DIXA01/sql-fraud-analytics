 SQL Fraud Analytics — E-Commerce Transactions

 Project Overview
This project presents an **end-to-end SQL analysis of e-commerce transaction data to identify fraud patterns, behavioural risks, and revenue exposure.  
The analysis focuses on translating raw transaction data into **business-ready insights** relevant for marketing, growth, CRM, and analytics roles.

The project demonstrates how SQL can be used not only for querying data, but for decision-making, segmentation, and performance evaluation.

 Business Problem
E-commerce platforms face continuous challenges from fraudulent transactions, which directly impact:
- revenue and profitability  
- marketing ROI (CAC, ROAS)  
- customer trust and conversion rates  

The objective of this project is to:
1. Measure overall fraud exposure  
2. Identify high-risk segments (time, geography, channel, category)  
3. Provide insights that support data-driven business decisions

 Dataset
- Source: Kaggle — E-commerce Fraud Detection Dataset  
- Granularity: One row per transaction  
- Environment: SQLite  

 Key Columns Used
| Column | Description |
|------|------------|
| `transaction_id` | Unique transaction identifier |
| `user_id` | Customer identifier |
| `amount` | Transaction value |
| `transaction_time` | Timestamp of transaction |
| `country` | Customer country |
| `bin_country` | Card issuing country |
| `channel` | Web / App |
| `merchant_category` | Product category |
| `avs_match` | Address verification result |
| `cvv_result` | CVV verification result |
| `three_ds_flag` | 3DS authentication flag |
| `is_fraud` | Fraud label (1 = fraud, 0 = legitimate) |


 🛠️ Tools & Technologies
- SQL (SQLite) — core data analysis  
- DB Browser for SQLite — query execution  
- GitHub — version control & portfolio presentation  
- Tableau (planned) — data visualisation  

📊 Analysis Performed (SQL)

All SQL queries are contained in a single file:  
📄 `fraud_analysis.sql`

 Key analyses include:
1. Total number of transactions  
2. Fraud count and overall fraud rate  
3. Fraud trends over time (daily)  
4. Fraud rate by country  
5. Fraud rate by channel (web vs app)  
6. Fraud rate by merchant category  
7. Fraud rate by card issuing country (BIN)  
8. Fraud patterns by hour of day  
9. Comparison of transaction value between fraud and non-fraud cases  

Each query is documented with comments explaining its business purpose.

 📁 Project Structure
