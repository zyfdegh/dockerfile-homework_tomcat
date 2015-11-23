-- Create user 'u_food'
-- Create database 'db_food'

-- CREATE USER 'u_food'@'%' IDENTIFIED BY 'password';
DROP DATABASE db_food;
CREATE DATABASE db_food;
ALTER DATABASE db_food charset=utf8;
-- GRANT ALL ON db_food.* TO 'u_food'@'%';
-- FLUSH PRIVILEGES;

USE db_food;
