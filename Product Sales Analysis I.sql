select Product.product_name,Sales.year,Sales.price
from Sales
join Product
on  Sales.product_id = Product.product_id
-- Method 2 using aliases --
SELECT 
    p.product_name, s.year, s.price
FROM 
    Sales s
JOIN 
    Product p
ON
    s.product_id = p.product_id