CREATE SCHEMA IF NOT EXISTS lc_1757;
CREATE TABLE IF NOT EXISTS lc_1757.products (
    product_id int,
    low_fats ENUM ('Y', 'N'),
    recyclable ENUM ('Y', 'N')
);
TRUNCATE TABLE lc_1757.products;
INSERT INTO lc_1757.products (product_id, low_fats, recyclable)
VALUES ('0', 'Y', 'N');
INSERT INTO lc_1757.products (product_id, low_fats, recyclable)
VALUES ('1', 'Y', 'Y');
INSERT INTO lc_1757.products (product_id, low_fats, recyclable)
VALUES ('2', 'N', 'Y');
INSERT INTO lc_1757.products (product_id, low_fats, recyclable)
VALUES ('3', 'Y', 'Y');
INSERT INTO lc_1757.products (product_id, low_fats, recyclable)
VALUES ('4', 'N', 'N');
----
-- PostgreSQL 16 
----
SELECT p.product_id
FROM products p
WHERE p.low_fats = 'Y'
    AND p.recyclable = 'Y';