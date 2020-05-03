/*商品コードが「S0023」の商品について、
商品テーブルの単価を500円に変更する。*/
UPDATE
  products
SET
  unit_price = 500
WHERE
  product_code = "S0023";