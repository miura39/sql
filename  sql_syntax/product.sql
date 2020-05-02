/*AUTOCOMMIT1無効*/
SET AUTOCOMMIT=0;

/*商品データベース作成*/
DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

/*DB選択*/
USE shop;

/*商品テーブル作成*/
DROP TABLE IF EXISTS products;
CREATE TABLE products
(
      product_code    CHAR(5) PRIMARY KEY,
      product_name    VARCHAR(50) NOT NULL,
      unit_price      INTEGER NOT NULL,
      categories      CHAR(1) NOT NULL,
      related_product CHAR(5)
)ENGINE = InnoDB;

/*注文テーブル作成*/
DROP TABLE IF EXISTS lf_order;
CREATE TABLE lf_order
(
      order_date          DATE,
      order_no            CHAR(12),
      order_branch_no     INTEGER,
      product_code        CHAR(5) NOT NULL,
      quantity            INTEGER,
      coupon_discount_fee INTEGER
)ENGINE = InnoDB;
ALTER TABLE lf_order ADD PRIMARY KEY(order_date,order_no,order_branch_no);

/*廃盤商品テーブル作成*/
DROP TABLE IF EXISTS db_products;
CREATE TABLE db_products
(
      product_code                CHAR(5) PRIMARY KEY,
      product_name                VARCHAR(50) NOT NULL,
      unit_price                  INTEGER NOT NULL,
      categories                  CHAR(1) NOT NULL,
      discountinued_product_date  DATE,
      seles_quantity              INTEGER NOT NULL
)ENGINE = InnoDB;

INSERT INTO products VALUES('A0001','秋のニットスカート',3800,1,NULL);
INSERT INTO products VALUES('A0052','裏起毛パーカー',2900,1,NULL);
INSERT INTO products VALUES('A0100','手編みの手袋',2500,3,NULL);
INSERT INTO products VALUES('A0101','手編みのマフラー',3900,3,NULL);
INSERT INTO products VALUES('A0500','透かし編みガーディガン',5800,1,NULL);
INSERT INTO products VALUES('A0501','透かし編みニットスカート',7800,1,NULL);
INSERT INTO products VALUES('A1055','刺繍ワンピース',4500,1,NULL);
INSERT INTO products VALUES('A6788','ゆるふわカットソー',2300,1,NULL);
INSERT INTO products VALUES('B0001','本革ショートブーツ',6900,2,NULL);
INSERT INTO products VALUES('B0102','やわらかロングブーツ',12600,2,NULL);
INSERT INTO products VALUES('B0113','イタリア製ビジネスシューズ',63000,2,NULL);
INSERT INTO products VALUES('B1350','雨の日も安心防水ブーツ',6150,2,NULL);
INSERT INTO products VALUES('B2137','歩きやすいストラップシューズ',3500,2,NULL);
INSERT INTO products VALUES('D6402','吸湿速乾シャツ',590,1,NULL);
INSERT INTO products VALUES('F0109','テストシャツ',1000,1,NULL);
INSERT INTO products VALUES('F0190','アンティーク長調財布',12600,3,NULL);
INSERT INTO products VALUES('F0191','イタリアンレザー長財布',15000,3,NULL);
INSERT INTO products VALUES('F0194','アンティーク調コインケース',8800,3,NULL);
INSERT INTO products VALUES('M0085','本革ビジネスバッグ',13000,3,NULL);
INSERT INTO products VALUES('M0122','ニットポシェット',3300,3,NULL);
INSERT INTO products VALUES('M0310','3WAYななめがけバッグ',5000,3,NULL);
INSERT INTO products VALUES('N0119','マグカップ型スピーカー',1350,9,NULL);
INSERT INTO products VALUES('N8810','赤ちゃん用肌着',980,9,NULL);
INSERT INTO products VALUES('N8990','マグネット（花）',350,9,NULL);
INSERT INTO products VALUES('N8991','マグネット（雪）',350,9,NULL);
INSERT INTO products VALUES('N8992','マグネット（月）',350,9,NULL);
INSERT INTO products VALUES('N9999','テストデータ',99999,9,NULL);
INSERT INTO products VALUES('S0017','形状記憶ワイシャツ',2900,1,NULL);
INSERT INTO products VALUES('S0023','チュールのコサージュ',550,3,NULL);
INSERT INTO products VALUES('S0604','長め丈Tシャツ',1500,1,NULL);
INSERT INTO products VALUES('S1003','綿のジャケット',3800,1,NULL);
INSERT INTO products VALUES('S1056','サマーロングスカート',2800,1,NULL);
INSERT INTO products VALUES('S0740','水玉のワンピース',2600,1,NULL);
INSERT INTO products VALUES('W0012','ニットセーター',3500,1,NULL);
INSERT INTO products VALUES('W0156','あったかルームソックス',800,1,NULL);
INSERT INTO products VALUES('W0746','あったかルームウェアセット',3500,1,NULL);
INSERT INTO products VALUES('W0960','毛皮のコート',58000,1,NULL);
INSERT INTO products VALUES('W1252','薄くて軽いダウンジャケット',5200,1,NULL);
INSERT INTO products VALUES('Z2323','ハンカチ（水玉）',300,3,NULL);
INSERT INTO products VALUES('Z2324','ハンカチ（チェック）',300,3,NULL);
INSERT INTO products VALUES('Z3360','あったかタイツ',500,1,NULL);
INSERT INTO products VALUES('Z6511','丈夫な靴下',600,1,NULL);

COMMIT;

/*今回は上記に記述したのでproducts.csvは利用しない。
-- /* csvファイルからデータのロード*/
-- LOAD DATA INFILE "ファイル場所指定：products.csv"
-- INTO TABLE products FIELDS TERMINATED BY ","
-- LINE TERMINATED BY "¥r¥n";
-- COMMIT;

/* csvファイルからデータのロード
*CSVデータはtmpに入れないと読み込まない
*SELECT @@global.secure_file_priv;を空にする必要がある。
*/
LOAD DATA LOCAL INFILE "/tmp/order.csv"
INTO TABLE lf_order 
FIELDS TERMINATED BY ',';
COMMIT;

/* csvファイルからデータのロード
*CSVデータはtmpに入れないと読み込まない
*SELECT @@global.secure_file_priv;を空にする必要がある。
*/
LOAD DATA LOCAL INFILE "/tmp/discontinued_products.csv"
INTO TABLE db_products 
FIELDS TERMINATED BY ',';
COMMIT;