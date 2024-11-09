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
