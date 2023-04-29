-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(600) NOT NULL
);

CREATE TABLE Product (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(600) NOT NULL,
  price DECIMAL(6, 2) NOT NULL,
  stock INT NOT NULL DEFAULT 6,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE Tag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(600) NOT NULL
);

CREATE TABLE ProductTag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  tag_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Product(id),
  FOREIGN KEY (tag_id) REFERENCES Tag(id)
);