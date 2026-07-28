# 🏦 Banking Fraud Detection & Risk Analytics Dashboard

A comprehensive end-to-end **Data Analytics** project that analyzes banking transactions to identify fraudulent activities, detect high-risk customer behavior, and uncover fraud patterns using **Python, SQL, and Power BI**.

The project transforms raw transaction data into interactive business intelligence dashboards that enable fraud monitoring, risk assessment, and data-driven decision-making.

---

## 📌 Project Overview

Financial fraud is one of the biggest challenges faced by modern banking institutions. This project focuses on identifying fraudulent transactions, analyzing customer behavior, monitoring fraud trends, and measuring financial impact through interactive dashboards.

The dashboard enables stakeholders to:

- Detect high-risk transactions
- Monitor fraud trends over time
- Analyze transaction patterns
- Identify fraud concentration
- Measure financial losses
- Understand customer behavior
- Support fraud prevention strategies

---

# 🛠 Tech Stack

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn

- **SQL**
  - MySQL

- **Power BI**
  - Power Query
  - DAX
  - Interactive Dashboards

- **Git & GitHub**

---

# 📂 Dataset Information

The dataset contains **6,362,620 banking transaction records** including:

- Transaction ID
- Customer ID
- Transaction Type
- Transaction Amount
- Transaction Time
- Account Balance
- Merchant Information
- Fraud Status
- Fraud Severity
- Location Details
- Device Information
- Weekend Indicator
- Risk Attributes

The dataset is highly imbalanced, with a **fraud rate of just 0.13%** (8,213 fraud cases) — a factor that shaped both the analysis approach and the evaluation of the bank's existing fraud-flagging system below.

---

# 🔄 Project Workflow

```
Raw Dataset
      │
      ▼
Data Cleaning (Python)
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Feature Engineering
      │
      ▼
SQL Analysis
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

# 📊 Dashboard Features

## Executive Dashboard

- Total Transactions
- Fraud Transactions
- Fraud Rate (%)
- Total Transaction Amount
- Fraud Amount
- Fraud Trend Over Time
- Fraud by Transaction Type
- Fraud Severity Distribution
- Fraud by Time Period
- Amount Size Distribution
- Fraud vs Non-Fraud Transactions

---

## Risk & Customer Analysis

- Fraud Loss Investigation (Sankey Analysis)
- Fraud Pattern Detection
- Customer Risk Analysis
- Transaction Behavior Analysis
- Fraud Concentration
- Time-based Fraud Analysis
- Severity-wise Financial Loss
- Weekend vs Weekday Fraud Analysis
- **Balance Drain Pattern** — Origin account balance fully drained, Fraud vs Non-Fraud
- **Fraud Detection Gap** — Existing flagging system's catch rate vs actual fraud

---

# 📈 Key Business Insights

- Identified the highest contributing transaction types responsible for fraudulent losses.
- Analyzed fraud distribution across different severity levels.
- Detected customer behavior patterns associated with high-risk transactions.
- Measured financial losses caused by fraudulent activities.
- Identified peak fraud periods during the day.
- Compared fraud occurrence between weekends and weekdays.
- Investigated transaction amount distribution for fraudulent activities.
- Enabled interactive fraud monitoring using dynamic Power BI dashboards.
- **Discovered that account balance behavior is a far stronger fraud signal than transaction amount** — 97.55% of fraudulent transactions fully drain the origin account balance to zero, compared to just 23.80% of legitimate transactions.
- **Evaluated the bank's existing rule-based fraud-flagging system** and found it correctly caught only 16 of 8,213 actual fraud cases — a catch rate of 0.19%, missing 99.81% of fraud entirely. Investigation showed the rule only flags large-amount TRANSFER transactions, unable to detect fraud patterns like balance-draining behavior.

---

# 🎯 Business Objectives

- Detect fraudulent transactions
- Monitor fraud trends
- Reduce financial losses
- Identify high-risk customers
- Improve fraud investigation
- Support risk management decisions
- Enable interactive business reporting

---

# 📊 Power BI Features Used

- DAX Measures
- Power Query
- Bookmarks
- Interactive Filters
- Drill Through
- Cross Filtering
- Custom Tooltips
- KPI Cards
- Dynamic Visualizations

---

# 📷 Dashboard Preview

## Executive Dashboard

<img width="1167" height="657" alt="Page 1 Preview" src="https://github.com/user-attachments/assets/8ddf077c-3fa4-4cf5-be33-491e4862415c" />


---

## Risk & Customer Analysis

<img width="1327" height="745" alt="Risk and Customer Analysis" src="https://github.com/user-attachments/assets/b21ae486-b8f9-41b8-9277-b9cdc4edc452" />



---

# 📁 Repository Structure

```
Banking-Fraud-Detection-Risk-Analytics/
│
├── Banking_clean.csv
├── fraud_analysis.pbix
├── Data Cleaning.ipynb
├── fraud_analysis.sql
├── README.md
├── Page 1 Preview.png
├── Page 2 Preview.png
└── .gitattributes
```

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL Querying
- Business Intelligence
- Dashboard Development
- Data Visualization
- DAX Calculations
- Power Query
- Fraud Analytics
- Banking Analytics
- Customer Risk Analysis
- Financial Analytics
- KPI Design
- Business Storytelling


---

# 📌 Business Impact

This dashboard helps financial institutions proactively identify fraudulent activities, monitor transaction behavior, understand customer risk profiles, and reduce financial losses through interactive data visualization and analytical insights.

Two findings in particular carry direct business impact:

1. **Balance-drain behavior is a stronger, more reliable fraud indicator than transaction amount**, since fraudulent transactions consistently empty the origin account (97.55%) while legitimate transactions rarely do (23.80%). This suggests fraud detection rules should weight account-balance behavior more heavily than transaction size alone.

2. **The bank's current rule-based flagging system is critically ineffective**, catching only 0.19% of actual fraud (₹ [add missed amount] worth of fraud went undetected). This highlights the need to move from static, single-condition rules toward a pattern-based or predictive detection approach.

---
