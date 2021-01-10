-- JSON Types
-- A lightweight format for storing and transferring data over the internet.
-- Add JSON data Method - I
USE sql_inventory;
UPDATE products
SET properties =
'{
"weight" : 10,
"dimension": [1,2,3],
"Mnufacturer" : {"name" : "sony"}
}'
WHERE product_id = 1;
 
-- SET properties in JSON formats Methos - II
USE sql_inventory;
UPDATE products
SET properties = JSON_OBJECT(
	'weight', 10, 
    'dimension', JSON_ARRAY(1,2,3),
    'manufactorer', JSON_OBJECT('name', 'sony')
    )
WHERE product_id = 2;


-- Extracting JSON data from tables
SELECT product_id, JSON_EXTRACT(properties, '$.weight')
FROM sql_inventory.products
WHERE product_id = 2;

-- Extracting JSON data using PATH operator
SELECT product_id, properties -> '$.weight' AS weight,
                   properties ->  '$.dimension[0]' AS measument,
				   properties ->> '$.manufactorer.name' AS dealer
FROM products
WHERE product_id = 2;

-- UPDATE JSON data using JSON_SET function
UPDATE products
SET properties = JSON_SET ( 
    properties,
    '$.weight' , 30,
    '$.price' , 19.99
    )
WHERE product_id = 1;

-- DELETE JSON data using JSON_REMOVE function
UPDATE products
SET properties = JSON_REMOVE ( 
    properties,
    '$.weight' ,
    '$.price'
    )
WHERE product_id = 1;



