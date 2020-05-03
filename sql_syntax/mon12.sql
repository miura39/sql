/*商品テーブルから、「衣類」でない商品データを抽出する。*/
SELECT
  *
FROM
  products
WHERE
  /*衣類は「１」なので１以外を指定*/
  categories NOT IN(1);