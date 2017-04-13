CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL (10,2) NOT NULL,
  stock_quantity INT default 0,
  PRIMARY KEY (id)
);

INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('1', 'spoon', 'kitchen', '3.00', '100');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('2', 'fork', 'kitchen', '3.00', '100');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('3', 'knife', 'kitchen', '3.00', '100');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('4', 'laptop', 'electronics', '1000.00', '200');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('5', 'smartphone', 'electronics', '500.00', '200');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('6', 'television', 'electronics', '750.00', '150');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('7', 'bicycle', 'outdoors', '250.00', '75');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('8', 'tent', 'outdoors', '75.00', '25');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('9', 'fishing rod', 'outdoors', '50.00', '75');
INSERT INTO `bamazon_db`.`products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES ('10', 'football', 'outdoors', '25.00', '75');