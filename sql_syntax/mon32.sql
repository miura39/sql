/*商品テーブルから、これまでに注文された実績のある商品コードを
商品コードの降順に抽出する。*/
SELECT  product_code
FROM    products
UNION
SELECT  product_code
FROM    lf_order
ORDER BY product_code ASC