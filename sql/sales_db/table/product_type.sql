CREATE TABLE product_type(
name VARCHAR(30) NOT NULL,
id SERIAL PRIMARY KEY);

INSERT INTO product_type (name) VALUES ('Business');
INSERT INTO product_type (name) VALUES ('Casual');
INSERT INTO product_type (name) VALUES ('Athletic');
