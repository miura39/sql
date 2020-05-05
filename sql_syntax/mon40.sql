/*商品テーブルから、商品名が１０文字を超過する商品名とその文字数を抽出する。
文字の昇順に並べること。*/
SELECT  product_name,
LENGTH  (product_name) AS 'memo'
FROM    products
ORDER BY LENGTH(product_name) > 10 ASC