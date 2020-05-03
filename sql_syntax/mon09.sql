/*商品テーブルから、単価が五万円以下の商品データを抽出する。*/
SELECT
  *
FROM
  products
WHERE
  unit_price <= 50000;