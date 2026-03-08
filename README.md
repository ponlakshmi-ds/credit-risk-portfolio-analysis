# Credit Risk Portfolio Analysis Dashboard

## Project Overview

This project demonstrates an end-to-end credit risk analytics workflow designed to simulate how financial institutions monitor and analyse credit portfolios. The objective is to identify risk concentration, evaluate portfolio health, and highlight high-risk customer accounts that may require further investigation.

The project integrates three key stages of the analytics pipeline:

* Data generation using Python
* Data transformation and analysis using SQL
* Interactive dashboard development using Power BI

The final result is a two-page executive dashboard that provides both **portfolio-level insights and account-level risk analysis**.

---

## Business Problem

Financial institutions must continuously monitor the quality of their credit portfolios to minimise losses from defaults and delinquent accounts. Analysts need tools that allow them to:

* Track overall portfolio health
* Understand risk distribution across customer segments
* Detect high-risk accounts and exposure concentrations
* Support data-driven credit risk management decisions

This project simulates such a monitoring system using synthetic portfolio data.

---

## Tools & Technologies

* Python – Synthetic data generation
* SQL – Data cleaning, transformation, and risk metrics
* Power BI – Data visualization and dashboard development
* GitHub – Project documentation and portfolio presentation

---

## Dataset

A synthetic credit portfolio dataset was generated to simulate real banking credit data. Each record represents a customer credit account.

Key fields include:

* Customer ID
* Credit Score
* Segment (Prime, Near-Prime, Subprime)
* Account Balance
* Utilisation Rate
* Days Past Due
* Default Flag
* Delinquent Flag
* Risk Level (Low, Medium, High)

Customer segments represent different credit quality groups commonly used in lending portfolios.

---

## Dashboard Structure

### Page 1 – Credit Portfolio Executive Overview

This page provides a high-level view of portfolio performance and risk distribution.

Key metrics include:

* Total Accounts
* Total Exposure
* Default Rate
* Delinquency Rate

Visualisations highlight:

* Portfolio composition across credit segments
* Default rate differences between segments
* Distribution of risk levels across the portfolio

This enables executives to quickly assess the overall health of the credit portfolio.

---

### Page 2 – Risk Exposure & Account-Level Analysis

This page focuses on deeper risk investigation and identification of high-risk exposure.

Key visualisations include:

Scatter Plot:
Credit Score vs Account Balance to identify risky exposure clusters.

High Risk Exposure by Segment:
Shows which customer segments contribute most to high-risk exposure.

Top High-Risk Accounts Table:
Lists individual accounts with the highest balances and elevated risk levels.

This page allows analysts to move from portfolio-level monitoring to specific account-level risk investigation.

---

## Key Insights

1. Subprime accounts represent a smaller portion of the portfolio but contribute disproportionately to high-risk exposure.

2. Prime customers demonstrate the lowest default rates, indicating stronger credit quality within this segment.

3. High-risk accounts tend to cluster around moderate credit scores combined with high account balances and utilisation rates.

These patterns reflect realistic credit portfolio dynamics commonly observed in financial institutions.

---

## Project Workflow

Python → Generate synthetic credit portfolio dataset

SQL → Clean, transform, and analyse portfolio data

Power BI → Build interactive dashboard for portfolio monitoring and risk investigation

---

## Future Improvements

Potential extensions for this project include:

* Time-series portfolio monitoring
* Predictive modelling for default risk
* Regional or product-level segmentation
* Automated risk alerts for high-risk accounts

---

## Author

Ponlakshmi Raman

Data Analyst | Advanced SQL & Operational Analytics | Forecasting & Predictive Modelling
