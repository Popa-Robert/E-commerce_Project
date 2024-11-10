CREATE TABLE IF NOT EXISTS product_category (
  id BIGSERIAL PRIMARY KEY,
  category_name VARCHAR(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS product (
  id BIGSERIAL PRIMARY KEY,
  sku VARCHAR(255) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  unit_price DECIMAL(13,2) DEFAULT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  active BOOLEAN DEFAULT TRUE,
  units_in_stock INT DEFAULT NULL,
  date_created TIMESTAMPTZ DEFAULT NULL,
  last_updated TIMESTAMPTZ DEFAULT NULL,
  category_id BIGINT NOT NULL,
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES product_category (id)
);

INSERT INTO product_category (category_name) VALUES ('Laptopuri');
INSERT INTO product_category (category_name) VALUES ('Tastaturi');

select *from product_category  

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES 
('Laptop-1', 'ASUS_TUF', 'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1000.png', TRUE, 100, 14.99, 1, NOW()),
('Tastatura-1', 'Tastatura', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1001.png', TRUE, 100, 20.99, 2, NOW());

select *from product
laptop1

delete from product

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES 
('Laptop1', 'Laptop1Name', 'Laptop1 Description', 'assets/images/products/laptops/laptop1.png', TRUE, 100, 1114.99, 1, NOW()),
('Laptop2', 'Laptop2Name', 'Laptop2 Description', 'assets/images/products/laptops/laptop2.png', TRUE, 100, 2240.99, 1, NOW()),
('Laptop3', 'Laptop3Name', 'Laptop3 Description', 'assets/images/products/laptops/laptop3.png', TRUE, 100, 164.99, 1, NOW()),
('Laptop4', 'Laptop4Name', 'Laptop4 Description', 'assets/images/products/laptops/laptop4.png', TRUE, 100, 133.99, 1, NOW()),
('Laptop5', 'Laptop5Name', 'Laptop5 Description', 'assets/images/products/laptops/laptop5.png', TRUE, 100, 2121.99, 1, NOW()),
('Laptop6', 'Laptop6Name', 'Laptop6 Description', 'assets/images/products/laptops/laptop6.png', TRUE, 100, 245.99, 1, NOW()),
('Laptop7', 'Laptop7Name', 'Laptop7 Description', 'assets/images/products/laptops/laptop7.png', TRUE, 100, 245.99, 1, NOW()),
('Tastatura1', 'Tastatura1Name', 'Tastatura1 Description', 'assets/images/products/keyboards/keyboard1.png', TRUE, 100, 79.99, 2, NOW()),
('Tastatura2', 'Tastatura2Name', 'Tastatura2 Description', 'assets/images/products/keyboards/keyboard2.png', TRUE, 100, 129.99, 2, NOW()),
('Tastatura3', 'Tastatura3Name', 'Tastatura3 Description', 'assets/images/products/keyboards/keyboard3.png', TRUE, 100, 19.99, 2, NOW()),
('Tastatura4', 'Tastatura4Name', 'Tastatura4 Description', 'assets/images/products/keyboards/keyboard4.png', TRUE, 100, 49.99, 2, NOW()),
('Tastatura5', 'Tastatura5Name', 'Tastatura5 Description', 'assets/images/products/keyboards/keyboard5.png', TRUE, 100, 29.99, 2, NOW()),
('Tastatura6', 'Tastatura6Name', 'Tastatura6 Description', 'assets/images/products/keyboards/keyboard6.png', TRUE, 100, 67.99, 2, NOW());