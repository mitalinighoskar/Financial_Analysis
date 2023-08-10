SELECT * FROM db1.statment_table;

/*Total Withdrawals and Deposits*/
SELECT
    SUBSTR(Date, 4, 2) AS Month,
    SUM(Withdrawal_amt) AS Total_Withdrawals,
    SUM(Deposit_amt) AS Total_Deposits
FROM db1.statment_table
GROUP BY Month
ORDER BY Month;

/*Monthly Net Change in Balance*/
SELECT
    SUBSTR(Date, 4, 2) AS Month,
    SUM(Deposit_amt - Withdrawal_amt) AS Net_Balance_Change
FROM db1.statment_table
GROUP BY Month
ORDER BY Month;

/*Average Withdrawal and Deposit Amounts*/
SELECT
    AVG(Withdrawal_amt) AS Avg_Withdrawal,
    AVG(Deposit_amt) AS Avg_Deposit
FROM db1.statment_table;

/*Monthly Spending Trend*/
SELECT
    DATE_FORMAT(Value_Dt, '%Y-%m') AS Month,
    SUM(Withdrawal_amt) AS Total_Withdrawals,
    SUM(Deposit_amt) AS Total_Deposits
FROM db1.statment_table
GROUP BY Month
ORDER BY Month;

/*Anomaly Detection*/
SELECT
    *,
    (Withdrawal_amt - AVG(Withdrawal_amt) OVER()) / STDDEV(Withdrawal_amt) OVER() AS Withdrawal_Z_Score,
    (Deposit_amt - AVG(Deposit_amt) OVER()) / STDDEV(Deposit_amt) OVER() AS Deposit_Z_Score
FROM db1.statment_table;

/*Ratio Analysis*/
SELECT 
    AVG(Withdrawal_amt) AS Avg_Withdrawal,
    AVG(Deposit_amt) AS Avg_Deposit,
    SUM(Withdrawal_amt) AS Total_Withdrawals,
    SUM(Deposit_amt) AS Total_Deposits,
    AVG(Closing_Balance) AS Avg_Closing_Balance,
    MAX(Closing_Balance) AS Max_Closing_Balance,
    MIN(Closing_Balance) AS Min_Closing_Balance,
    MAX(Closing_Balance) - MIN(Closing_Balance) AS Range_Closing_Balance,
    (SUM(Deposit_amt) - SUM(Withdrawal_amt)) / COUNT(*) AS Average_Savings_Ratio,
    SUM(CASE WHEN Withdrawal_amt > 0 THEN Withdrawal_amt ELSE 0 END) / SUM(CASE WHEN Deposit_amt > 0 THEN Deposit_amt ELSE 1 END) AS Expense_to_Income_Ratio
FROM  db1.statment_table;




