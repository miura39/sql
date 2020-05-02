/*　商品テーブルの全てのデータを抽出する。「＊」を用いないこと。*/
SELECT
  product_code,
  product_name,
  unit_price,
  categories,
  related_product
FROM
  products;
