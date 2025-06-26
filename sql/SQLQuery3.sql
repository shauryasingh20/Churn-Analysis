SELECT Gender, COUNT(Gender) as TotalCount,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Gender

SELECT Contract, COUNT(Contract) as TotalCount,
COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Contract

SELECT Customer_Status, COUNT(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_Churn) * 100 as RevPercentage
FROM stg_Churn
GROUP BY Customer_Status

SELECT State, COUNT(State) as TotalCount,
COUNT(State) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY State
ORDER BY Percentage desc