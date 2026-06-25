CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    stock INT,
    brand VARCHAR(50)
);

INSERT INTO products(product_name, category, price, stock, brand)
VALUES
('iPhone 15','Mobile',80000,20,'Apple'),
('Galaxy S24','Mobile',70000,15,'Samsung'),
('MacBook Air','Laptop',95000,8,'Apple'),
('Dell Inspiron','Laptop',65000,10,'Dell'),
('Boat Earbuds','Accessories',2000,50,'Boat'),
('Sony Headphones','Accessories',5000,25,'Sony'),
('HP Pavilion','Laptop',75000,5,'HP'),
('iPad Air','Tablet',60000,12,'Apple'),
('Redmi Note','Mobile',18000,40,'Xiaomi'),
('Samsung Tab','Tablet',35000,18,'Samsung');

-- Show all products
select * from products

-- Show only product_name and price

select product_name , price from products
-- Show products where price > 50000
select * from products where price > 50000

-- Sort products by price descending
select * from products order by price desc

-- Show first 5 products
select count(5) from products

-- Show products whose names start with 'S'
select * from products where product_name like 'S%'
-- Show products whose names contain 'Air'
select * from products where product_name like '%Air%'
-- Show products with price between 20000 and 80000
select * from products where  price  between 20000 and 80000
-- Show products whose category is Mobile or Laptop
select * from products where category ='Mobile' or category='Laptop'
-- Show unique categories
select distinct category from products
-- Show Apple products sorted by price descending
select * from products where brand='Apple' order by price desc
-- Show products with stock between 10 and 30
select * from products where  stock between 10 and 30

--Show products whose names start with 'I'
-- AND stock > 10
-- Sort by price descending
SELECT *
FROM products
WHERE product_name LIKE 'I%'
AND stock > 10
ORDER BY price DESC;