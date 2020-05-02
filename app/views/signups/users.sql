/*AUTOCOMMIT1無効*/
SET AUTOCOMMIT=0;

/*商品データベース作成*/
DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

/*DB選択*/
DROP TABLE IF EXISTS products;
CREATE TABLE products;
(
      product_code    CHAR(5)PRIMARY KEY,
      product_name    VARCHAR(50) NOT NULL
      unit_price      INTEGER NOT NULL
      categories      CHAR(1) NOT NULL
      related_product CHAR(5)
)