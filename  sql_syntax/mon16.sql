/*「靴」または「雑貨」もしくは「未分類」の商品について、商品コード、商品区分を抽出する
ただし、記述する条件式は1つであること。*/
SELECT
  product_code,
  categories
FROM
  products
WHERE
  categories IN(2,3,NULL,"");