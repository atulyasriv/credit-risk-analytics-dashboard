
-- CREDIT RISK ANALYTICS DASHBOARD
-- SQL analysis using SQLite
-- Source table: loans_cleaned

-- 1. Overall loan portfolio summary
SELECT
    COUNT(*) AS total_loan_records,
    SUM(loan_amount) AS total_loan_amount,
    SUM(CASE WHEN default_flag = 1 THEN 1 ELSE 0 END) AS defaulted_loans,
    SUM(CASE WHEN default_flag = 0 THEN 1 ELSE 0 END) AS fully_paid_loans
FROM loans_cleaned;

-- 2. Default rate by loan grade
SELECT
    grade,
    COUNT(*) AS resolved_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS default_rate
FROM loans_cleaned
WHERE default_flag IN (0, 1)
GROUP BY grade
ORDER BY grade ASC;

-- 3. Default rate by borrower income band
SELECT
    income_band,
    COUNT(*) AS resolved_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS default_rate
FROM loans_cleaned
WHERE default_flag IN (0, 1)
GROUP BY income_band
ORDER BY default_rate DESC;

-- 4. Default rate by state
SELECT
    state,
    COUNT(*) AS resolved_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS default_rate
FROM loans_cleaned
WHERE default_flag IN (0, 1)
GROUP BY state
HAVING COUNT(*) >= 5000
ORDER BY default_rate DESC;

-- 5. Default rate by loan purpose
SELECT
    purpose,
    COUNT(*) AS resolved_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS default_rate
FROM loans_cleaned
WHERE default_flag IN (0, 1)
GROUP BY purpose
ORDER BY default_rate DESC;

-- 6. Default rate by origination year
SELECT
    strftime('%Y', issue_date) AS origination_year,
    COUNT(*) AS resolved_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS default_rate
FROM loans_cleaned
WHERE default_flag IN (0, 1)
  AND issue_date IS NOT NULL
GROUP BY strftime('%Y', issue_date)
ORDER BY origination_year;
