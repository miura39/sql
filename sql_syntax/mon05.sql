/*商品テーブルに次の３つのデータを追加する。
　SQL 文はデータごとに１つずつ作成すること。
　　　　　　　列名、データ１、データ２、データ３
　商品コード　W0461、S0331、A0582
　商品名　　　冬のあったかコート、春のさわやかコート、秋のシックなコート
　単価　　　　12800、6800、9800　　　　
　商品区分　　1、1、1
*/

/*データ１*/
INSERT INTO products
  (
    product_code,
    product_name,
    unit_price,
    categories
  )
VALUES
  (
    "W0461",
    "冬のあったかコート",
    12800,
    1
  );
/*データ２*/
INSERT INTO products
  (
    product_code,
    product_name,
    unit_price,
    categories
  )
VALUES
  (
    "S0331",
    "春のさわやかコート",
    6800,
    1
  );
  /*データ３*/
INSERT INTO products
  (
    product_code,
    product_name,
    unit_price,
    categories
  )
VALUES
  (
    "A0582",
    "秋のシックなコート",
    9800,
    1
  );