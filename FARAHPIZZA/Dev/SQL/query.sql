SELECT COUNT(*) FROM [bronze].[pizza_sales];
SELECT * FROM [bronze].[pizza_sales]
SELECT * FROM [silver].[pizza_sales]

SELECT COUNT(*) FROM [silver].[pizza_sales]
TRUNCATE TABLE [silver].[pizza_sales]

EXEC bronze.demo_sp

