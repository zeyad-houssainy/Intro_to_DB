USE alx_book_store; 

SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE
FROM 
    information_schema.columns
WHERE
    TABLE_SCHEMA = 'alx_book_store'
    TABLE_NAME = 'Books';
