
INSERT INTO bronze.pizza_sales (
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
    ingestion_date
)
VALUES 
    (48621,21351, 'PN001', 2, '2025-04-20', '12:30:00', 12.99, 25.98, 'Medium', 'Vegetarian', 'Tomato, Cheese, Olives', 'Veggie Supreme', 'pizza_data.csv', '2025-04-20 12:45:00'),
    (48622,21351, 'PN002', 1, '2025-04-20', '13:00:00', 15.99, 15.99, 'Large', 'Meat Lover', 'Pepperoni, Sausage, Bacon', 'Meat Feast', 'pizza_data.csv', '2025-04-20 13:15:00'),
    (48623,21352, 'PN003', 3, '2025-04-20', '13:30:00', 10.99, 32.97, 'Small', 'Cheese', 'Cheese, Tomato', 'Cheese Delight', 'pizza_data.csv', '2025-04-20 13:45:00'),
    (48624,21353, 'PN004', 7, '2025-04-20', '13:30:00', 10.99, 32.97, 'Small', 'Cheese', 'Cheese, Tomato', 'Cheese Delight', 'pizza_data.csv', '2025-04-20 13:45:00'),
    (126,52, 'PN005', 1, '2025-04-20', '14:00:00', 8.99, 8.99, 'Medium', 'Vegetarian', 'Tomato, Cheese, Olives', 'Veggie Delight', 'pizza_data.csv', '2025-04-20 14:15:00'),
    (127,52, 'PN005', 1, '2025-04-20', '14:00:00', 8.99, 8.99, 'Medium', 'Vegetarian', 'Tomato, Cheese, Olives', 'Veggie Delight', 'pizza_data.csv', '2025-04-20 14:15:00');

DELETE FROM bronze.pizza_sales
WHERE pizza_id IN (48621, 48622, 48623, 48624);

DELETE FROM silver.pizza_sales
WHERE pizza_id IN (48621, 48622, 48623, 48624);

