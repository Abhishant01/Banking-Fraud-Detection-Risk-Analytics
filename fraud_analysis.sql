
USE Banking_Fraud_Analytics;
SHOW TABLES;

SELECT *
FROM banking_transactions;


--- 1. Summary about the Fraud Dashboard.

SELECT 
COUNT(*) AS total_transactions,
SUM(isFraud) AS fraud_transactions,
ROUND(SUM(isFraud)*100/ COUNT(*), 2) AS fraud_rate_percentage,
ROUND(SUM(amount),2) AS total_amount,
ROUND(SUM(CASE WHEN isFraud = 1 THEN amount ELSE 0 END),2) AS fraud_amount,
ROUND(AVG(amount),2) AS average_amount
FROM banking_transactions;

--- 2. Transaction type performance. 

SELECT
type AS transaction_type,
COUNT(*) AS total_transactions,
ROUND(SUM(amount),2) AS total_amount
FROM banking_transactions
GROUP BY type
ORDER BY ROUND(SUM(amount),2) DESC;

--- 3. Fraud by Transaction types. 

SELECT 
type AS transaction_type,
ROUND(SUM(amount),2) AS fraud_amount,
COUNT(*) AS fraud_transactions
FROM banking_transactions
WHERE isFraud = 1 
GROUP BY type
ORDER BY ROUND(SUM(amount),2) DESC;

--- 4. Fraud Severity Distribution

SELECT 
Fraud_Severity,
COUNT(*) AS Fraud_Counts
FROM banking_transactions
GROUP BY Fraud_Severity
ORDER BY COUNT(*) DESC;

--- 5. Fraud by Time period. 

SELECT 
Time_period,
COUNT(*) AS Fraud_counts
FROM banking_transactions
WHERE isFraud = 1
GROUP BY Time_period
ORDER BY COUNT(*) DESC;

--- 6. Fraud by Weekends and Weekdays. 

SELECT 
Weekend,
COUNT(*) AS Fraud_Transactions,
ROUND(SUM(amount),2) AS Fraud_amount
FROM banking_transactions
WHERE isFraud = 1 
GROUP BY Weekend
ORDER BY SUM(amount) DESC;

--- 7. High Value Fraud Trannsactions. 

SELECT 
High_Value,
COUNT(*) AS Total_transactions,
ROUND(SUM(amount),2) AS total_amount
FROM banking_transactions
GROUP BY High_Value
ORDER BY ROUND(SUM(amount),2) DESC;

--- 8. Top 10 Customers by Transaction Amount. 

SELECT
    Customer_Name,
    SUM(amount) AS total_transaction_amount
FROM banking_transactions
GROUP BY Customer_Name
ORDER BY total_transaction_amount DESC
LIMIT 10;

--- 9. Flagged Fraud vs Actual Fraud

SELECT
isFlaggedFraud,
COUNT(*) AS Fraud_Count ,
SUM(isFraud) AS Actual_Fraud
FROM banking_transactions
GROUP BY isFlaggedFraud;

--- 10. Fraud Contribution by Transaction Type.

WITH FraudSummary AS (

SELECT 
type,
ROUND(SUM(amount),2) AS Fraud_Amount
FROM banking_transactions
WHERE isFraud = 1
GROUP BY type
)

SELECT 
type,
ROUND(Fraud_Amount,2) AS Fraud_Amount,
ROUND(Fraud_Amount * 100/SUM(Fraud_Amount) OVER() ,2) AS Contribution_Percentage
FROM FraudSummary
ORDER BY Fraud_Amount DESC ;

--- 11. Daily Fraud Ranking

SELECT 
Transaction_Day,
ROUND(SUM(amount),2) AS Fraud_Amount,
RANK() OVER(
ORDER BY SUM(amount) DESC ) AS Fraud_Rank
FROM banking_transactions
WHERE isFraud = 1
GROUP BY Transaction_Day;

--- 12. Time Period Contributing Most of the Frauds. 

WITH FraudSummary AS (

SELECT 
Time_period,
ROUND(SUM(amount),2) AS Fraud_Amount
FROM banking_transactions
WHERE isFraud = 1
GROUP BY Time_period
)

SELECT 
Time_period,
ROUND(Fraud_Amount,2) AS Fraud_Amount,
ROUND(Fraud_Amount * 100 /SUM(Fraud_Amount) OVER () ,2) AS Contribution_Percentage
FROM FraudSummary
GROUP BY Time_period
ORDER BY Fraud_Amount DESC;

--- 13. How much money is associated with each fraud severity level?

SELECT 
Fraud_Severity,
COUNT(*) AS Total_Fraud_Cases,
ROUND(SUM(amount),2) AS Total_Fraud_Amount,
ROUND(AVG(amount),2) AS Average_Fraud_Amount,
ROUND(MAX(amount),2) AS Maximum_Amount,
ROUND(MIN(amount),2) AS Minimum_Amount
FROM banking_transactions
WHERE isFraud = 1
GROUP BY Fraud_Severity
ORDER BY COUNT(*) DESC;
