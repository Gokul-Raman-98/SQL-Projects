## check the bank loan data ##
SELECT * FROM bank_loan_data

## Find the total no. of Applications ##
SELECT 
COUNT(id) AS Total_Loan_Applications 
FROM 
bank_loan_data;

## Find MTD loan applications ##
SELECT 
COUNT(id) AS MTD_Total_Loan_Applications 
FROM 
bank_loan_data
WHERE
MONTH(issue_date) = 12
AND 
YEAR(issue_date) = 2021;

## Find PMTD loan applications ##
SELECT 
COUNT(id) AS PMTD_Total_Loan_Applications 
FROM 
bank_loan_data
WHERE
MONTH(issue_date) = 11
AND 
YEAR(issue_date) = 2021;

## Find MTD total funded amount ##
SELECT
SUM(loan_amount) AS Total_Funded_Amount
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 12 
AND
YEAR(issue_date) = 2021;

## Find PMTD total funded amount ##
SELECT
SUM(loan_amount) AS Total_Funded_Amount
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 11 
AND
YEAR(issue_date) = 2021;

## Find total amount received ##
SELECT
SUM(total_payment) AS Total_Amount_received
FROM
bank_loan_data

## Find MTD total amount received ##
SELECT
SUM(total_payment) AS Total_Amount_received
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 12
AND
YEAR(issue_date) = 2021;

## Find PMTD total amount received ##
SELECT
SUM(total_payment) AS Total_Amount_received
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 11
AND
YEAR(issue_date) = 2021;

## Find Average Interest Rate ##
SELECT
ROUND(AVG(int_rate),4) * 100 AS Avg_Interest_Rate
FROM
bank_loan_data;

## Find MTD Average Interest Rate##
SELECT
ROUND(AVG(int_rate),4) * 100 AS Avg_Interest_Rate
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 12
AND
YEAR(issue_date) = 2021;

## Find PMTD Average Interest Rate ##
SELECT
ROUND(AVG(int_rate),4) * 100 AS Avg_Interest_Rate
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 11
AND
YEAR(issue_date) = 2021;

## Find Average DTI ##
SELECT
ROUND(AVG(dti),4) * 100 AS Avg_DTI
FROM
bank_loan_data;

## Find MTD Average DTI ##
SELECT
ROUND(AVG(dti),4) * 100 AS Avg_DTI
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 12
AND
YEAR(issue_date) = 2021;

## Find PMTD Average DTI ##
SELECT
ROUND(AVG(dti),4) * 100 AS Avg_DTI
FROM
bank_loan_data
WHERE
MONTH(issue_date) = 11
AND
YEAR(issue_date) = 2021;

## Find Good Loan Percentage ##
SELECT
	(COUNT(CASE
					WHEN loan_status ='Fully Paid' OR loan_status ='Current'
					THEN id END) * 100)
					/
	COUNT(id) AS Good_loan_percentage
FROM bank_loan_data;

## Find No. of  Good Loan Applications ##
SELECT
COUNT(id) AS Good_Loan_Applications
FROM
bank_loan_data
WHERE
loan_status = 'Fully Paid' OR  loan_status = 'Current';

## Find Good Loan Funded Amount ##
SELECT
SUM(loan_amount) AS Good_Loan_Funded_amount
FROM
bank_loan_data
WHERE
loan_status = 'Fully Paid' OR loan_status = 'Current'

## Find Good Loan Amount Received ##
SELECT
SUM(total_payment) AS Good_Loan_Received_amount
FROM
bank_loan_data
WHERE
loan_status = 'Fully Paid' OR loan_status = 'Current'

## Find Bad Loan Percentage ##
SELECT
	(COUNT(CASE
					WHEN loan_status ='Charged Off' 
					THEN id END) * 100)
					/
	COUNT(id) AS Bad_loan_percentage
FROM bank_loan_data;

## Find No. of Bad Loan Applications ##
SELECT
COUNT(id) AS Bad_Loan_Applications
FROM
bank_loan_data
WHERE loan_status = 'Charged Off'

## Find Bad Loan Funded Amount ##
SELECT
SUM(loan_amount) AS Bad_Loan_Funded_amount
FROM
bank_loan_data
WHERE
loan_status = 'Charged Off'

## Find Bad Loan Amount Received ##
SELECT
SUM(total_payment) AS Bad_Loan_amount_received
FROM
bank_loan_data
WHERE
loan_status = 'Charged Off'

## Find the loan status ##
SELECT
	loan_status,
	COUNT(id) AS Total_loan_applications,
	SUM(total_payment) AS Total_Amount_Received,
	SUM(loan_amount) AS Total_Funded_Amount,
	AVG(int_rate * 100) AS Interest_Rate,
	AVG(dti*100) AS DTI
FROM
bank_loan_data
GROUP BY
loan_status;

## Find the MTD loan status ##
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status;

## Find the Monthly Trends ##
SELECT
	MONTH(issue_date) AS Month_Number,
	DATENAME(MONTH, issue_date) AS Month_Name,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM
bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);

## Find Regional Trends ##
SELECT
	address_state,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM
bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC;

## Find loan term trends ##
SELECT
	term,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM
bank_loan_data
GROUP BY term
ORDER BY term;

## Find Employee length trends ##
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;

## Find Purpose trends ##
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;

## Find home ownership trends ##
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;






