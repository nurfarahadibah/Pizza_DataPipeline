ALTER PROCEDURE bronze.demo_sp AS
BEGIN

    SELECT 
        [pizza_id],
        [order_id],
        [pizza_name_id],
        [quantity],
        [order_date],
        [order_time],
        [unit_price],
        [total_price],
        [pizza_size],
        [pizza_category],
        [pizza_ingredients],
        [pizza_name],
        [src_file_name],
        [ingestion_date],
        GETDATE() AS tbl_updated_date
    INTO #temp
    FROM [bronze].[pizza_sales];

    SELECT COUNT(*) FROM  #temp;


    INSERT INTO [silver].[pizza_sales](
        pizza_id,
        order_id,
        pizza_name_id,
        quantity,
        order_date,
        order_time,
        unit_price,
        total_price,
        pizza_size,
        pizza_category,
        pizza_ingredients,
        pizza_name,
        src_file_name,
        ingestion_date,
        tbl_updated_date
    )
    SELECT
        src.pizza_id,
        src.order_id,
        src.pizza_name_id,
        src.quantity,
        src.order_date,
        src.order_time,
        src.unit_price,
        src.total_price,
        src.pizza_size,
        src.pizza_category,
        src.pizza_ingredients,
        src.pizza_name,
        src.src_file_name,
        src.ingestion_date,
        src.tbl_updated_date
    FROM #temp AS src
    LEFT JOIN [silver].[pizza_sales] AS tgt 
        ON src.pizza_id = tgt.pizza_id 
        AND src.order_id = tgt.order_id
    WHERE tgt.pizza_id IS NULL;
    SELECT COUNT(*) FROM silver.pizza_sales;
    DROP TABLE #temp;

END;
