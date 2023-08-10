# Personal Finance Data Analysis and Visualization Project

                                                 # Project Description #
Conducted a comprehensive analysis of my personal financial data(bank statements per month) using SQL, Excel, and Python to gain insights into spending habits, detect anomalies, and Ratio analysis. Employed data visualization techniques to present trends and patterns.

                                                     # Skills Used #
* SQL: Utilized SQL queries to extract and manipulate financial data from a database.
* Data Analysis: Employed data analysis techniques to identify spending patterns and anomalies.
* Data Visualization: Created visually compelling graphs and charts using Matplotlib to communicate findings effectively.

                                                 # SQL Code Description #
1. Total Withdrawals and Deposits: This query calculates the total withdrawals and total deposits for each month. It extracts the month from the Date column and then calculates the sums of Withdrawal_amt and Deposit_amt for each month.
   
2. Monthly Net Change in Balance: Similar to the first query, this query calculates the net change in balance for each month. It calculates the difference between the sum of deposit amounts and the sum of withdrawal amounts for each month.
  
3. Average Withdrawal and Deposit Amounts: This query calculates the average withdrawal amount and average deposit amount for all transactions in the statment_table.
  
4. Monthly Spending Trend: This query calculates the total withdrawals and total deposits for each month, formatting the month's date in the MM-DD format.
  
5. Anomaly Detection: This query computes the Z-scores for both withdrawal amounts and deposit amounts. Z-scores are a statistical measure that indicates how many standard deviations an individual data point is from the mean. This can help identify potential anomalies or outliers in the withdrawal and deposit amounts.
  
6. Ratio Analysis: This query performs a variety of ratio calculations related to financial analysis. It calculates average withdrawal and deposit amounts, total withdrawals and deposits, average closing balance, maximum and minimum closing balances, range of closing balances, average savings ratio (total deposits minus total withdrawals divided by the number of transactions), and expense-to-income ratio (total expenses divided by total income).

                                                  # Data Visualisation through Pandas #

   Retrieves data from a MySQL database, processes it using pandas and generates various visualizations to explore different aspects of the financial data.
   
*  Imported the necessary libraries, mysql.connector for database connection and pandas for data manipulation and analysis.
* Then a database connection is made through parameters like host, user, password, and database name.
* Inside a try block, established a connection to the MySQL database using the provided parameters and defined an SQL query to retrieve all columns from the 
   "statment_table" table.
* Using the pd.read_sql() function, read the query results into a pandas DataFrame called data. And after reading the data, the database connection is closed.
* Finally, displayed the first few rows of the DataFrame using data.head().
* Next, A multi-plot visualization is created using plt.subplot() to arrange multiple plots in a grid layout.
  -  Plot 1: A line plot of "Closing_Balance" over time is created.
  -  Plot 2: A bar plot is generated for the total "Withdrawal_amt" and "Deposit_amt".
  -  Plot 3: A histogram with a kernel density estimate (KDE) is plotted to show the distribution of "Withdrawal_amt".
* Finally, plt.tight_layout() ensures proper spacing between subplots, and plt.show() displays the plots.






