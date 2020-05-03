/*商品テーブルから、単価が千円以下の商品データを抽出する。*/
SELECT
  *
FROM
  products
WHERE
  unit_price <= 1000;