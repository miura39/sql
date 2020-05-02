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
)ENGINE = INNODB;

/*注文テーブル作成*/
DROP TABLE IF EXISTS order;
CREATE TABLE order
(
      order_date          DATE,
      order_no            CHAR(12),
      order_branch_no     INTEGER,
      product_code        CHAR(5)NOT NULL,
      quantity            INTEGER,
      coupon_discount_fee INTEGER
)ENGINE = INNODB;
ALTER TABLE order ADD PRIMARY KEY(order_date,order_no,order_branch_no);
