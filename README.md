
# Credit Risk Analytics Dashboard

An interactive financial analytics dashboard built using Power BI, SQL, SQLite, and DAX to analyse historical loan portfolio performance and identify borrower segments associated with higher default rates.

## Project Overview

This project explores LendingClub loan data to understand historical repayment outcomes and examine how credit risk varies across borrower and loan characteristics.

The dashboard enables users to analyse portfolio-level metrics and compare default rates across loan grades, income groups, states, loan purposes, and origination years.

## Objectives

- Analyse historical loan repayment outcomes.
- Calculate default rates using resolved loan records.
- Compare credit risk across borrower segments.
- Explore geographical and loan-purpose differences.
- Present findings through an interactive Power BI dashboard.

## Dataset

- **Source:** [LendingClub Loan Data – Kaggle](https://www.kaggle.com/datasets/wordsforthewise/lending-club)

The dataset contains loan amounts, interest rates, borrower income, loan grades, loan purposes, geographical information, and repayment statuses.

## Tech Stack

- SQL Data querying and analytical aggregations.
- SQLite Data storage and preprocessing.
- Power BI Interactive dashboard development.
- DAX Measures and portfolio KPIs.
- Power Query Data transformation and preparation.

## Key Metrics

- Total loan records
- Total loan amount
- Defaulted loans
- Default rate among resolved loans

## Analytical Dimensions

The dashboard examines default rates across

- Loan grades (A–G)
- Borrower income bands
- Geographical states
- Loan purposes
- Origination-year cohorts

## Methodology

1. Imported and examined the LendingClub loan dataset.
2. Used SQLite to clean and transform relevant loan attributes.
3. Created analytical fields, including income bands and origination dates.
4. Classified resolved loans into fully paid and defaulted outcomes.
5. Calculated default rates using SQL and DAX.
6. Built interactive Power BI visualisations and slicers.

### Default Rate Definition

Default Rate = Defaulted Loans  Resolved Loans × 100

Resolved loans include fully paid and defaulted loans. Current, late, and other unresolved statuses are excluded from this calculation.

Historical default rates grouped by origination year represent eventual observed outcomes, not defaults occurring during that year. Recent cohorts may have incomplete repayment histories.

## Repository Structure

```text
credit-risk-analytics-dashboard
│
├── Credit_Risk_Analytics.pbix
├── sql
│   └── analysis_queries.sql
├── screenshots
│   └── dashboard.png
├── docs
└── README.md
```

## Limitations

- The analysis is based on historical LendingClub data.
- Default rates are descriptive historical metrics, not predictions of future defaults.
- Unresolved loans are excluded from resolved-loan default-rate calculations.
- Recent origination cohorts may have incomplete repayment outcomes.

## Future Improvements

- Develop predictive credit-risk models.
- Explore borrower-level risk factors.
- Introduce statistical validation of segment-level differences.
- Build more detailed portfolio monitoring metrics.

---

Developed as a financial data analytics project using SQL and Power BI.

## Power BI Dashboard

[Download Credit Risk Analytics Dashboard (.pbix)](https://github.com/atulyasriv/credit-risk-analytics-dashboard/releases/tag/v1.0)
