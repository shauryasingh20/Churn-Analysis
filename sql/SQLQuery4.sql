CREATE VIEW vw_JoinData as
	SELECT * FROM prod_Churn WHERE Customer_Status = 'Joined';