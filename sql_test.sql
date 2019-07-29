CREATE TABLE products(
    int product_id,
    varchar(255) product_name,
    int price,
    varchar(255) creationDate
);
CREATE TABLE product_categories(
    int primary_key
    int product_id
    int  category_id
);
CREATE TABLE categories(
    int category_id,
    varchar(255) category_name,
    int flag_name
);


SELECT name, price, creationDate 
FROM products
WHERE categories_flag LIKE "%*%*%*%*%*%"

SELECT DISTINCT
        p.product_id,
        p.product_name,
        p.price,
        p.creationDate,
FROM product_categories pc
JOIN product p
        ON pc.product_id = p.product_id
WHERE pc.category_id IN
(SELECT category_id 
                                FROM categories
                                WHERE flag_name = "public")
HAVING COUNT(*) > 5
