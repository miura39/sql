/*商品テーブルから、これまでに注文されたことのない商品コードを
商品コードの昇順に抽出する*/
SELECT  product_code
FROM    products
UNION
SELECT  product_code
FROM    lf_order
ORDER BY product_code ASC