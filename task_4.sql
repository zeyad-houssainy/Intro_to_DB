USE alx_book_store; 

SELECT 
    COLUMN_NAME, 
    DATA_TYPE
FROM 
    information_schema.columns
WHERE
    TABLE_SCHEMA = "alx_book_store", 
    TABLE_NAME = "Books";
