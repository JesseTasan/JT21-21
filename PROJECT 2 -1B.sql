
SELECT CITIZENSHIP, SUM(PURCHASEAMOUNT) AS "TOTAL PURCHASE AMOUNT", 
AVG(PURCHASEAMOUNT) AS "AVG Purchase Amount", 
COUNT(T1.BORROWERID) AS "No. of Borrowers",
AVG(
FROM DBO.Borrower AS T1
JOIN DBO.LoanSetupInformation AS T2
ON T1.BORROWERID=T2.BORROWERID 
GROUP BY Citizenship
ORDER BY "TOTAL PURCHASE AMOUNT" DESC;
